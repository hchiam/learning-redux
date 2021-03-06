# Learning Redux

Just one of the things I'm learning. <https://github.com/hchiam/learning>

**_TL;DR_**: Redux is a predictable state container. My mnemonic of key things to remember: **SDAR** = Store -> Dispatch -> Action -> Reducer. You can get a quick review [on freeCodeCamp](https://www.freecodecamp.org/learn/front-end-libraries/redux/write-a-counter-with-redux).

* It can let you debug with ["time travel"](https://github.com/reduxjs/redux-devtools).
* State can only change via **_emitting/dispatching an action_**, which are specified with pure **_reducers_**.
* Three principles:
  1. single source of truth `store.getState()`
  2. state is read-only `store.dispatch({...})`
  3. make changes with pure functions `reducer = (state, action) => modified(state)`

`yarn add redux` or `npm install --save redux`

Key things to remember: `const reducer`, `store = Redux.createStore(combinedReducer)`, `store.dispatch({type: SOME_ACTION})`, `reducer = (state, action) => {switch (action.type) {...}}`

You can `store.subscribe(() => { /* some function that runs as a "listener" upon actions */ })`

(You can generate a [dependency graph](https://github.com/hchiam/learning-dependency-cruiser) with `bash show_dep_graph.sh`.)

## Simple example

<https://github.com/hchiam/learning-redux/tree/master/counter-example>

## Simple example of updating state in a sibling component

<https://github.com/hchiam/code-inspiration/commit/53d13d23cbb7fa13b9c95f108be8d2949072db5a#diff-71bf5fe8b337e70fdec5d142f4881d9eR6>

(Added `redux` without adding `react-redux`.)

## Interactive references of combining Redux with React

- `<Provider store={store>...</Provider>`: <https://www.freecodecamp.org/learn/front-end-libraries/react-and-redux/use-provider-to-connect-redux-to-react>
- `const Container = connect`: <https://www.freecodecamp.org/learn/front-end-libraries/react-and-redux/connect-redux-to-the-messages-app>
- FINALLY PUT IT ALL TOGETHER: <https://www.freecodecamp.org/learn/front-end-libraries/react-and-redux/extract-local-state-into-redux> (move a piece of local component state into the Redux "single source of state").

## Helpful example of adding data to redux state container

<https://github.com/hchiam/react-jexcel-redux/commit/90db044627780ed6262f5e29bb61a24390a4d4b3>

- **action** -> "abstraction": do some more fancy stuff here before calling store.dispatch here instead of inside a component’s custom methods (note: store.dispatch instead of this.props.dispatch)
- **reducer** -> update state
- **combineReducers** -> combine different reducers into one state container in index.js when you import rootReducer from '../reducers' in files in /store folder

- **component action connected to state container** -> this.props.dispatch action on state (instead of store.dispatch), which works once you use import { connect } from 'react-redux'

  ```js
  function mapStateToProps(state) {
    return { data: state.data }
  }
  export default connect(mapStateToProps)(Jexcel) // connect component to state
  ```

- non-critical extras:

  - **constants/actionTypes** -> “enum” to label actions meaningfully
  - **prop-types** -> type checking of state data to be stored


- `redux-thunk` middleware for asynchronous actions. (To apply it, use `createStore(combinedReducer, Redux.applyMiddleware(...))`.) For more info / to quickly try it out: <https://www.freecodecamp.org/learn/front-end-libraries/redux/use-middleware-to-handle-asynchronous-actions>

## Examples (via CLI or online sandboxes)

<https://redux.js.org/introduction/examples/>

```bash
cd counter-example
npm install
npm start
```

## Extra notes

- In development, you can use [redux-immutable-state-invariant](https://github.com/leoasis/redux-immutable-state-invariant) to programmatically warn/remind developers about immutability when you're coding, or use [Immer](https://github.com/hchiam/learning-immer) to enforce it.
- It might seem silly to use string constants, but [there's a few good reasons for larger projects](https://stackoverflow.com/questions/34965856/what-is-the-point-of-the-constants-in-redux/37054518#37054518)
- You can do "reducer composition".
- All reducers are called on each action dispatch, but only the relevant handler(s) will handle it. Reducers together form a complete picture of the store if you make each reducer handle a different logical part of the app.
- An action can be handled by multiple reducers. A reducer can handle multiple actions.

## Reference

<https://redux.js.org/introduction/getting-started/>

<https://redux.js.org/introduction/motivation/>

<https://redux.js.org/introduction/core-concepts/>

<https://redux.js.org/introduction/three-principles/>

Cartoon guide to Redux: <https://code-cartoons.com/a-cartoon-intro-to-redux-3afb775501a6>

## Further reading: "5 types of state" (for React apps)

<http://jamesknelson.com/5-types-react-application-state>

1. Data
2. Communication
3. Control
4. Session
5. Location

## Related Repos

<https://github.com/hchiam/learning-reactjs>

<https://github.com/hchiam/chat-app-fcc-react-redux>
