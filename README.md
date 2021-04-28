# BOILERPLATE FLUTTER ARCHITECTURE 
This project is a boilerplate to start a new flutter project, based on SOLID and CLEAN principles architecture.

## Patterns

    * MVM( Model View Model)
    * Repository

## Getting Started

* flutter run

# FILE STRUCTURE
The structure of this project is designed by layers, each folder represent a layer to granulate each piece of our code. 
## data
Services, connecting with a service using [http dart]

## di
Dependency injection using [getIT] package. 

## domain

In this folder there are the domain models

## ui

### smart_widgets
For widgets views or components that can reusable on multiples views
### views
Views in general, each view has a folder with :

* view: Represent the view with any logic
* viewModel: Include the logic of the view and the state.

For viewModels use [stacked] package.


[getIt]:<https://pub.dev/packages/get_it>
[http dart]:<https://pub.dev/packages/http>
[stacked]:<https://pub.dev/packages/stacked>


