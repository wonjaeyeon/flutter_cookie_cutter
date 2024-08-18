# Domain Layer Explanation


## Difference between UI Logic and Business Logic
 - UI Logic defines how to display things on screen. 
 - business logic defines what to do with events and data changes.[events와 data changes를 어떻게 다룰지를 정한다.] -> ex) getting latest news, showing error messages when there is no internet connection.
 - in smaller apps, business logic is often held in view models or data layer.

## Domain Layer's Components
- Domain Layer only contains the business logic of the application.
- Domain Layer is made up of Classes known as interactors or use cases.
- A one use case represents a single task which the user can do or which the app performs on the user's behalf.

## Use Case's guideline
- A use case should be Simple, Lightweight, and Immutable.
- If you need to cache data, this logic should be in the data layer.

## Use Case's Dependency
- use cases can be dependent on lower layers such as repositories(in data layer), and on other use cases.
- use cases should not be dependent on the ui layer such as view models.


## Common tasks of Domain Layer
- Encapsulating reusable business logic - Date formatting logic from ui layer
- Combine data from multiple repositories - ex) GetNewsWithAuthorUseCase - Combining News Repository and Authors Repository(can be in view model but domain layer is more appropriate)
- 

## Reference

- [App architecture - Android developers](https://developer.android.com/topic/architecture/intro)
