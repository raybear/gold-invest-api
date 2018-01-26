<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Database model for building.
 *
 * This model includes all building relations and common calculation functions.
 *
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 *
 * @property Floor $floors
 *
 * @since 1.0
 * @author Slobodan Sekulic
 */
class Building extends Model
{
    protected $fillable = [
        'name',
        'sold',
        'soldOut',
        'block',
        'city',
        'contract',
        'finished',
        'mainImage',
        'pdfCatalogUrl',
        'pdfCatalogImage'
    ];

    public function floors()
    {
        return $this->hasMany('App\Models\Floor', 'id', 'building');
    }
    public function locations()
    {
        return $this->hasMany('App\Models\Location', 'id', 'building');
    }
}