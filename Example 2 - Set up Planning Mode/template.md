## Direct response
{{ direct_response }}

## Executive summary
{{ executive_summary }}

## Acceptance criteria
{% for c in acceptance_criteria %}- [ ] {{ c }}
{% endfor %}

## Plan
| # | Step | Simplified | Order |
|---|------|------------|-------|
{% for item in plan %}| {{ loop.index }} | {{ item.step }} | {{ item.simplified }} | {{ item.parallel }} |
{% endfor %}

## Operating rules
{{ operating_rules }}

## Verification
{% for item in acceptance_tests %}{{ loop.index }}. {{ item }}
{% endfor %}

## Rollback
{% for item in rollback %}{{ loop.index }}. {{ item }}
{% endfor %}

## Questions and concerns
{% for q in questions %}{{ loop.index }}. {{ q }}
{% endfor %}

---
Template syntax help: https://github.com/obsidianmd/knap
