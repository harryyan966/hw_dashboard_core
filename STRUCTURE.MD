> hwdashboard core is the high level description of the program, it contains every aspect of the program except the extremely low level details that are just used to implement features. Thus, it may contain things like database and services. It is a full-fledged program, just in its abstract form without specific implementation
> in other words, this package contains what we want to do.

# Structure

## Database
statement of the functions of the database

## Entities
reference objects and constants, validated and stored

## Exceptions
application errors that may be thrown

## Handlers
usecases, or what we want to do in the app

## Helpers
constants used repeatedly

## Models
data structures that represent things

## Services
possible external services we need to have
