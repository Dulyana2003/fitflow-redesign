# Activity 2: Backend, Database & Authentication Comparison

## Backend Frameworks

| Criterion | Node.js / NestJS | Python / FastAPI | Go (Gin/Fiber) |
|---|---|---|---|
| Development speed | Fast — TypeScript, decorators, modular architecture, huge community | Very fast — concise syntax, auto docs (OpenAPI), great for AI features | Moderate — more boilerplate, but simple mental model |
| Performance | Good — event-loop based, non-blocking I/O | Good — async support, but slower raw throughput than Go | Excellent — compiled, extremely low latency and memory footprint |
| Ecosystem/tooling | Massive npm ecosystem, first-class TypeScript support | Excellent for AI/ML (same language as most ML libraries) | Smaller ecosystem, but very solid standard library |
| Real-time capability | Excellent — native WebSocket/Socket.io support | Good — WebSockets supported, less mature tooling | Excellent — goroutines make concurrent streams cheap |
| Team familiarity (mid-sized team) | High — many full-stack teams already know JS/TS | High if the team also owns the AI microservice in Python | Lower — fewer engineers know Go by default |
| AI integration | Calls out to Python AI microservice via REST/gRPC | Native — can host AI/ML logic directly in same service | Calls out to AI microservice via REST/gRPC |

## Database Options

| Criterion | PostgreSQL | MongoDB | Firebase (Firestore) | DynamoDB |
|---|---|---|---|---|
| Data model fit | Best for structured, relational data (users, plans, billing) | Best for flexible/semi-structured data (logs, feeds) | Good for simple flexible documents, tightly coupled to Firebase | Good for key-value/high-throughput workloads |
| Query performance | Excellent for complex joins/reporting with proper indexing | Fast for document lookups, weaker for complex joins | Fast for simple reads, limited complex querying | Extremely fast at scale for simple access patterns |
| Scalability | Vertical scaling strong; horizontal needs extra tooling (Citus etc.) | Scales horizontally well via sharding | Auto-scales, fully managed by Google | Auto-scales seamlessly, fully managed by AWS |
| Health data handling | Strong ACID guarantees — well suited to sensitive health records | Weaker consistency guarantees unless carefully configured | Reasonable, but less control over compliance configuration | Reasonable; strong consistency mode available |
| Compliance (HIPAA/GDPR) | Mature support across all major managed hosts (RDS, Aurora, etc.) | Supported on Atlas with BAA available | Supported but tied to Google Cloud compliance boundaries | Supported on AWS with BAA available |
| Cost (mid-sized team) | Low-moderate, predictable managed-service pricing | Moderate, can grow with heavy read/write volume | Low to start, can scale unpredictably with usage | Pay-per-request can be economical but variable |

## Authentication & Authorization Options

| Criterion | Firebase Auth | AWS Cognito | Auth0 | Supabase Auth |
|---|---|---|---|---|
| Setup speed | Very fast, tightly integrated SDKs | Moderate — more configuration required | Fast — polished dashboards and SDKs | Fast, especially if already using Supabase |
| Compliance/security | Good; inherits Google Cloud security posture | Strong — AWS IAM integration, HIPAA-eligible | Strong — SOC2, HIPAA/GDPR-ready on paid tiers | Good; improving compliance certifications |
| Social/enterprise login | Wide provider support out of the box | Wide support, deeper enterprise SSO options | Best-in-class breadth of providers and enterprise SSO | Good provider support, smaller enterprise feature set |
| Cost at scale | Low at small scale, rises with MAUs | Cost-effective at large scale within AWS | Can become expensive at higher MAU tiers | Low cost, bundled with Supabase Postgres |
| Best fit | Teams already using Firebase/Firestore | Teams standardising on AWS infrastructure | Teams wanting the most mature dedicated identity platform | Teams wanting Postgres + auth in one managed package |

## Recommendation

**Recommended combination:** NestJS (Node.js/TypeScript) for core application services, a Python/FastAPI microservice dedicated to AI personalization, PostgreSQL as the primary relational store with MongoDB for high-volume unstructured logs (nutrition entries, activity feed), and Auth0 for authentication.

- NestJS gives FitFlow a structured, testable, TypeScript-based backend that a mid-sized team can onboard onto quickly, while its modular architecture cleanly separates workout, nutrition, and social domains.
- A dedicated FastAPI microservice isolates AI/ML personalization logic in Python, the natural language for that workload, without forcing the entire backend into Python.
- PostgreSQL is chosen for core health and user data because of its strong ACID guarantees, which matter for accuracy and auditability of health-related records; MongoDB complements it for flexible, high-volume logs such as nutrition entries and social activity feeds.
- Auth0 is recommended over Firebase Auth/Cognito for its maturity, breadth of enterprise and social login options, and strong out-of-the-box compliance posture (SOC2, HIPAA/GDPR-ready tiers), reducing the custom compliance work a mid-sized team would otherwise carry.