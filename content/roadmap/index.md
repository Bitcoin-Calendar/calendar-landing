---
title: "Roadmap"
description: "Future plans and upcoming features for Bitcoin Calendar"
type: "page"
---

This page outlines the development roadmap for the Bitcoin Calendar project, organized by quarter with specific goals and milestones.

![project-architecture](https://haven.bitcoin-calendar.org/3feca195e808558617e7d3a6dbaf4f42b0ded77dc1ead229feb3fb097d79e049.webp)

## Q2 2025 (April-June)

`Version 1.0.0`

### Core Data & Content Enhancement
- **English Event Population**
  - Target: Expand to 500+ historical events in English
  - Add missing historical milestones
  - Standardize formatting and citation requirements
- **Content Quality Improvements**
  - Add media files for all events (images, charts)
  - Include additional backup archive links to prevent link rot
  - Implement consistent formatting standards
- **SQLite Database Migration**
  - [x] Migrate event data from CSV files to an SQLite database
  - [x] Update bot and API to use SQLite as the primary data source
  - [x] Define database schema and data integrity rules
  - [x] Implement API support for SQLite

### API Development
- **Public API**
  - [x] Create RESTful API for accessing events from SQLite DB
  - [x] Implement rate limiting and authentication
  - [x] Develop comprehensive API documentation
- **Integration Options**
  - Implement webhooks for event notifications
  - Develop widgets for embedding calendar events
  - Create RSS feeds for various categories

### Infrastructure & Archiving
- **ArchiveBox Setup**
  - Setup ArchiveBox to locally host all the web pages and documents Bitcoin Calendar refers to
  - Plan integration of archived links into event data (via SQLite DB)
- **Monitoring and Alerting**
  - Implement health check system
  - Set up automated alerts for failed posts

- **Dockerization of Calendar Bot**
  - [x] Create Dockerfile for the Go application
  - [x] Implement Docker Compose setup for easy deployment and management (production and test instances)
  - [x] Updated documentation for Docker-based setup

### Data Redundancy Improvements
- **Deeper Nostr Integration**
  - [x] Spin up Haven relay
  - [x] Spin up Blossom Server

## Q3 2025 (July-September)

### Content Enhancement
- **Metadata Optimization**
  - Implement consistent tagging strategy
  - Create event categories and tagging system

- **Content Expansion**
  - Create thematic collections of related events
  - Develop "This Week in Bitcoin History" compilations and weekly statistics reports

## Q4 2025 (October-December)
`Version: 2.0.0`

### Web Presence Development
- **Interactive Website**
  - Develop responsive frontend for browsing events
  - Create search functionality
  - Add filtering by categories, tags, and dates

## Q4 2025 (October-December)

`Version: 2.0.0`

### API & Community
- **Public API**
  - Release public API for developers
- **Contribution System**
  - Implement submission system for community contributions

### Chatbot Development
- **MCP Server & Initial Chatbot**
  - Set up MCP server
  - Start working on a Bitcoin history oriented chatbot implementation (relying on DVMCP for Nostr integration)

## Q1-Q2 2026 (January-June)

### Mobile & Advanced Features
- **Mobile-Friendly Experience**
  - Create mobile-friendly experience (e.g., Progressive Web App)
- **Nostr Login**
  - Implement Nostr login
- **Chatbot Enhancements**
  - Develop LLM based chatbot
  - Create Nostr Historian bot

## Long-term Vision

### Bitcoin Archive
- **Ensuring no Bitcoin event is lost**
  - Setup ArchiveBox to locally host all the web pages and documents Bitcoin Calendar refers to
  - Integrate archived pages across the Bitcoin Calendar ecosystem – the bot, the website - to ensure the project does not have to rely on any third-party services 

### Educational Resources
- **Learning Paths**
  - Develop curated learning paths based on historical events and [21ideas](https://21ideas.org/en/) Bitcoin knowledge base
  - Create downloadable educational materials to complement calendar format

### Integration Ecosystem
- **Calendar Integration**
  - Calendar subscription service (iCal, Google Calendar)
  - Event reminder system
  - Personal calendar integration

### Advanced Features
- **Content Exploration**
  - Implement search by concepts and relationships
  - Develop visualization of historical connections
  - Create AI-assisted navigation of Bitcoin history

### Content System Evolution
- **Submission System**
  - Design curator workflow for approving submissions
  - Implement verification process for historical accuracy
  - Create citation standards and guidelines