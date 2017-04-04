Feature: Organizer checks hosting availability

  Scenario: Organizer checks for available slots for host
    When An organizer communicates with a potential host
    Then The organizer wants to see the available 12 slots for hosting

  Scenario: Organizers checks for the next available slot for host
    When An organizer communicates with a potential host
    Then The organizers can see the next available slot for hosting

Feature: Organizer checks speaking availability

  Scenario: Organizer checks for available slots for speaker
    When An organizer communicates with a potential speaker
    Then The organizer wants to see the available 12 slots for speaking

  Scenario: Organizers checks for the next available slot for speaker
    When An organizer communicates with a potential speaker
    Then The organizers can see the next available slot for speaking

Feature: Assigning host to a slot

  Scenario: Organizer wants to assign a host to a slot
    Given That the slot is available
    When An organizer assigns a host to a slot
    Then The slot should be filled
    And It should not be available for other hosts
    And It should broadcast a domain event

  Scenario: Organizer wants to assign a host to a slot
    Given That the slot is unavailable
    When An organizer assigns a host to a slot
    Then The system prevents the organizer from assigning the slot

Feature: Assigning speaker to a slot

  Scenario: Organizer wants to assign a speaker to a slot
    Given That the slot is available
    When An organizer assigns a speaker to a slot
    Then The slot should be filled
    And It should not be available for other speakers
    And It should broadcast a domain event

  Scenario: Organizer wants to assign a speaker to a slot
    Given That the slot is unavailable
    When An organizer assigns a speaker to a slot
    Then The system prevents the organizer from assigning the slot

Feature: Retrieve slot information

  Scenario: Organizer wants to retrieve slot information
    Given the slot exists
    When The organizer provides a slot identifier
    Then The system provides the information of the slot

  Scenario: Organizer wants to retrieve slot information
    Given the slot does not exist
    When The organizer provides a slot identifier
    Then The system prevents the organizer from retrieving slot information