class Historian < ApplicationRecord
    include AlgoliaSearch

    algoliasearch do
      # all attributes will be sent
    end
end