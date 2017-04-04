<?php

namespace AmsterdamPHP;

final class SlotId
{
    /**
     * @var \DateTimeInterface
     */
    private $date;

    public function __construct(\DateTimeInterface $date)
    {
        $this->date = $date;
    }

    public function __toString() : string
    {
        return $this->date->format('y-M-d');
    }
}