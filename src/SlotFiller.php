<?php

namespace AmsterdamPHP;

interface SlotFiller
{

    /**
     * @param SlotId    $slotId
     * @param SponsorId $sponsorId
     * @throws CouldNotFillSlot
     */
    public function fillHostingSlot(SlotId $slotId, SponsorId $sponsorId): void;

    /**
     * @param SlotId    $slotId
     * @param SpeakerId $speakerId
     * @throws CouldNotFillSlot
     */
    public function fillSpeakingSlot(SlotId $slotId, SpeakerId $speakerId): void;
}