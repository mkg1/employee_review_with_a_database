# Employee Reviews with a Database

## Overview
This code is set up to create a database with three tables: 1) Employees, 2) Departments, and 3) Reviews

## Schematic Overview
The user able to create departments, add employees a departments, and give employees reviews.

Departments have many employees and an employee belongs to one department:

```class Employee < ActiveRecord::Base
  belongs_to :department```

  ```class Department < ActiveRecord::Base
    has_many :employees```

From this, an entire department salary can be determined and a raise can be given to an entire department. Employees can also be given an individual raise and performance review.
