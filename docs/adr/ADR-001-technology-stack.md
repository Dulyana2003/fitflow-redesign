# ADR-001: Adopt Flutter + NestJS + FastAPI microservice architecture for FitFlow

**Status:** Accepted

## Context

FitFlow requires a single consistent experience across iOS, Android, and Web, real-time workout/social features, and an AI-driven personalization engine, to be built and maintained by a mid-sized engineering team under cost and compliance (HIPAA/GDPR-aligned) constraints.

## Decision

Use Flutter for all client surfaces; use NestJS-based microservices for core application logic behind an API Gateway; isolate AI personalization in a dedicated FastAPI microservice; use PostgreSQL for relational/health data and MongoDB for high-volume logs; use Redis for caching and real-time pub/sub; use Auth0 for authentication and authorization.

See `docs/architecture-diagram.png` for the corresponding high-level system diagram.

## Alternatives Considered

- React Native + FastAPI + Firebase/Firestore + Firebase Auth (Stack B)
- Native Kotlin/Swift development
- Single-monolith backend instead of microservices

## Consequences

**Positive:** single frontend codebase, strong data consistency for health records, independently scalable services, mature compliance posture via Auth0/PostgreSQL.

**Negative:** microservices add operational complexity (service discovery, inter-service auth) versus a monolith, and running two backend languages (TypeScript, Python) requires broader team skill coverage.