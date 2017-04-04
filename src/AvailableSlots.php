<?php

namespace AmsterdamPHP;

interface AvailableSlots
{
    public function availableSlotsForHosting(): ListOfSlots;
    public function availableSlotsForSpeaking(): ListOfSlots;
    public function nextAvailableSlotForHosting(): Slot;
    public function nextAvailableSlotForSpeaking(): Slot;

}