<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Database model for building floors.
 *
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 *
 * @property Building $building
 *
 * @since 1.0
 * @author Slobodan Sekulic
 */
class Floor extends Model
{
    protected $fillable = [
        'name'
    ];

    protected $hidden = [
        'building'
    ];

    /**
     * Returns building that the floor is associated to.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo Parent building
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    public function building() {
        return $this->belongsTo('App\Models\Building', 'building', 'id');
    }
}