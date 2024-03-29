# KATA\_Testing\_API

## Prerequires

* Install Ruby locally: https://stackify.com/install-ruby-on-windows-everything-you-need-to-get-going/
* Install the bundler gem (command in the terminal : gem install bundler)
* Go to the location of your newly cloned / downloaded framework and do a bundle install to install all the necessary gems

## Framework structure

The below framework can be used for API automation, using Ruby and NET (a Ruby gem/library used for calling REST APIs)

### helpers

The helpers.rb is a class where you can add general methods used within different test cases (e.g. call get request, call post request)

### step\_definitions

In this folder you will store all the step definitions for the BDD scenarios created

### support

In the support folder you have the env.rb file in which project configurations are stored (e.g. required gems...)

### feature file

In this feature file you will add the BDD scenarios for the below requests

## Instructions

Clone locally the repository from here:
`https://github.com/cristinavelican/SpringPetClinicRest.git`
In order to run it locally do the following:

* open GitBash
* cd spring-petclinic-rest
* ./mvnw spring-boot:run

In a browser navigate to http://localhost:9966/petclinic/swagger-ui.html#/ after the build is complete

You should be able to access all the APIs for this project. (e.g. in the `pet-rest-controller` you can access all the APIs for the pets category)

Create BDD scenarios and execute them successfully for the following situations:

* Add a new pet (Attention points: in order to have the correct information in the request body you need to first GET the owners details + GET a pet's category(id + name). Visits information are not mandatory, but the visits:[] Array needs to be in the request body)
* Using scenario outline, create a vet for each of the specialities (the id of the speciality is required)

In order to install all the necesary gems (ruby libraries) for this project you need to run the following commands in a terminal (which being located inside the project path):
`gem install bundler`
`bundle install`

The second command will install all the dependencies/gems defined in the Gemfile

You can run a scenario from the terminal/command line and being located in the project path with the following:

`cucumber -t "@get_pets"`
where `@get_pets` represents the tag you have added for you scenario

## Useful resources

* https://itsadeliverything.com/declarative-vs-imperative-gherkin-scenarios-for-cucumber
