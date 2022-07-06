class AddArrivalAndDepartureIdsToFlight < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :departure_airport, references: :airports, index: true
    add_foreign_key :flights, :airports, column: :departure_airport_id

    add_reference :flights, :arrival_airport, references: :airports, index: true
    add_foreign_key :flights, :airports, column: :arrival_airport_id
  end
end
