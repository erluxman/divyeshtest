# To run the flutter runner to generate the app properly run this command,

## Navigate to root directory of this project and run the following command in Mac/Linux
`./buildAndGenerate.sh`
## TODO write `DOS` equivalent of the buildAndGenerate.sh

# Our app will follow Packaging structure with respect to features.


## There are major 3 Packages to start with

- CaseManager : Deals with features related to Case Manager.
- Nurse : Deals with features related to Nurse.
- common : Deals with common features and libraries / reusable code components across the application.


## Navigation inside Package.

- Each package is tried to be made as self contained as possible & will contain a list of features, necessary DI (specially the inject @module related to that feature).
- Each feature will contain UI, Data & Business Logic packages and DI to integrate those component with each other.
- `Data` will contain the Model, Repository( The communication channel from/to the data package from outside), Remote, Local and Mock DataSource.
- `Business Logic` will contain the UI state Management and Use Cases. State will communicate with Repository through use cases.
- `UI` will contain the Widgets that will be displayed in the screen.

## Libs Used.

 - `dart.inject` for dependency injection across Non-Widget code components like Use cases,Bloc,Repository and Data source .
 - `floor` for local persistence & reactive ORM.
 - `retrofit/chopper`  for consuming remote APIS.
 - `Provider/Bloc` for state management and dependency supply across the WidgetTree.
 - `aws-cognito` for Authentication.


# Architecture Setup

[Architecture](art/architecture.png)
