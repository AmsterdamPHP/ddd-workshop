<?php

namespace AmsterdamPHP;

final class CouldNotFillSlot extends \DomainException {
    public static function becauseHostingWasAlreadyAssigned(SponsorId $sponsorId);

    public static function becauseSpeakerWasAlreadyAssigned($speakerId);
}