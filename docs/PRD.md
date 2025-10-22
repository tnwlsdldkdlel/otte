# 🧶 Product Requirements Document (PRD) - Final Version: Knitting Community App

## 1. Goal

| Section  | Description                                                                          |
| :------- | :----------------------------------------------------------------------------------- |
| **Goal** | To become the **most active information-sharing platform** for knitting enthusiasts. |

## 2. Target Audience

| Section              | Description                                                                                                                         |
| :------------------- | :---------------------------------------------------------------------------------------------------------------------------------- |
| **Primary Audience** | Knitters of all skill levels who actively seek and share project-related information, especially alternatives for yarn and needles. |

## 3. Key Feature: The "Re-Yarn/Re-Needle" Recommendation Engine (Killer Feature)

| Section                                     | Description                                                                                                                                                                                                |
| :------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Core Value**                              | Users can easily find and share alternative yarn and needle information used by others for a specific pattern, moving beyond the pattern's original suggestions.                                           |
| **Data Sourcing**                           | **Primary Data Source:** The system must be designed to crawl and aggregate structured data (Yarn and Needle information) from **Naver Blog posts** based on pattern search queries (e.g., "XXX Pattern"). |
| **Recommendation Display Logic**            | Recommendations must be displayed based on frequency (most recommended first).                                                                                                                             |
| **Recommendation Display Format (Example)** | Recommendation results must clearly show the yarn combination and needle size used, such as: "Somsom Knits Cloud Navy 2-ply + 5mm Needle".                                                                 |
| **External Linking**                        | This feature must provide **deep links** to relevant external blogs or sources mentioned in the recommendation data.                                                                                       |

## 4. Core Platform Features

| Feature                | Description                                                                      | Design Note                                                                                     |
| :--------------------- | :------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------- |
| **Project Feed**       | A timeline displaying projects from followed users and trending posts.           | **Instagram-style layout** is preferred for visual focus.                                       |
| **Project Upload**     | Allows users to create a new post for their completed or ongoing projects.       | **Mandatory Input Fields:** Pattern Name/ID, Yarn Used, Needle Size. **Optional Input:** Gauge. |
| **Engagement**         | Standard user interaction functionalities (Comments, Likes, Save/Bookmark).      |                                                                                                 |
| **Search Function**    | Allows searching projects by keywords, including Pattern Name, Yarn, and Needle. |                                                                                                 |
| **Push Notifications** | Users must be notified of activity on their posts.                               | **Triggers:** New Like, New Comment, **New Follower**.                                          |

## 5. User Management & Account

| Feature             | Description                                                              | Technical Requirement                                                             |
| :------------------ | :----------------------------------------------------------------------- | :-------------------------------------------------------------------------------- |
| **Authentication**  | Users must be able to sign up and log in easily.                         | **Supported Methods:** Standard Email/Password, **Social Login (Kakao, Google)**. |
| **User Profile**    | Allows users to customize their identity and share external links.       | **Fields:** Nickname, Profile Photo, **SNS ID (Instagram or Blog URL)**.          |
| **Follow/Unfollow** | Users can follow other users to view their projects in the Project Feed. | This feature is critical for building the community network.                      |

## 6. Technical Requirements (Development Environment)

| Section                          | Description                                                                                       | Rationale                                                                                                                             |
| :------------------------------- | :------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------------ |
| **Client Development Framework** | **Flutter (Dart)**                                                                                | Chosen for rapid cross-platform development (iOS/Android) and compatibility with Vibe Coding methodology.                             |
| **State Management**             | **GetX**                                                                                          | Chosen for efficient state, dependency, and route management within the Flutter application.                                          |
| **Supported Platforms**          | **iOS & Android**                                                                                 | Full cross-platform support required to maximize user reach from launch.                                                              |
| **Backend/Database**             | **Supabase**                                                                                      | Chosen as the backend-as-a-service (BaaS) for its real-time capabilities, authentication features, and PostgreSQL database structure. |
| **Data Storage**                 | Supabase Storage will be used for storing user-uploaded media (Project Photos, Profile Pictures). | ---                                                                                                                                   |
