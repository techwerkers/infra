<?php
namespace Espo\Custom\Classes\Select\Lead\PrimaryFilters;

use Espo\Core\Select\Primary\Filter;
use Espo\ORM\Query\SelectBuilder;

class RequiresReview implements Filter
{
    public function apply(SelectBuilder $queryBuilder): void
    {
        // Define what status values your new filter should isolate
        $queryBuilder->where([
            'status' => ['New', 'Assigned', 'Processing', 'Invited']
        ]);
    }
}
