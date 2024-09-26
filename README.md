# bloc_cubit

A flutter project for building a counter app using state management bloc/cubit

## Project Architecture

### Counter Cubit

- It is responsible for the events, where it's a simplified version of bloc

- First it extends a Cubit class, then we add the constructor to be the initial state.

- We then add all events or methods responsible for changing the state.

### Counter Page

- This class is responsible for providing the counter cubit to the UI
- It contains the BlocProvide, where we can pass to it the state with the child
- It also contains the BlocListener, where we can listen on the state change
  
### Counter View

- This class is responsible for rending the UI of the counter value passed from the BloCProvider

- It also contains the BlocBuilder, where it's essential to render the counter state.
