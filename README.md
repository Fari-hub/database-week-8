Database Design: Prison ECDE Management System
🔍A system to manage early childhood education programs in women’s prisons, tracking children, caregivers, educators, lesson plans, and stakeholder visits.

🧩 Relationships
- One Prison has many Children, Caregivers, Educators
- One Educator can teach many LessonPlans
- Many Children can follow many LessonPlans (Many-to-Many)
- Stakeholders can visit many Prisons (Many-to-Many via Visit)

