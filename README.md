# Learning Redux

Just one of the things I'm learning. <https://github.com/hchiam/learning>

**_TL;DR_**: Redux is a predictable state container.

* It can let you debug with ["time travel"](https://github.com/reduxjs/redux-devtools).
* State can only change via **_emitting an action_**, which are specified with pure **_reducers_**.
* Three principles:
  1. single source of truth `store.getState()`
  2. state is read-only `store.dispatch({...})`
  3. make changes with pure functions `reducer = (state, action) => modified(state)`

`yarn add redux` or `npm install --save redux`

Don't forget to `store.subscribe(render)`!

(You can generate a [dependency graph](https://github.com/hchiam/learning-dependency-cruiser) with `bash show_dep_graph.sh`.)

## Examples (via CLI or online sandboxes)

<https://redux.js.org/introduction/examples/>

```bash
cd counter-example
npm install
npm start
```

## Reference

<https://redux.js.org/introduction/getting-started/>

<https://redux.js.org/introduction/motivation/>

<https://redux.js.org/introduction/core-concepts/>

<https://redux.js.org/introduction/three-principles/>

Cartoon guide to Redux: <https://code-cartoons.com/a-cartoon-intro-to-redux-3afb775501a6>

## Related Repos

<https://github.com/hchiam/learning-reactjs>

<https://github.com/hchiam/chat-app-fcc-react-redux>
