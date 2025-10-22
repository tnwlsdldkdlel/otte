# Otte - 뜨개질 커뮤니티 앱

뜨개질 애호가들이 프로젝트를 공유하고, 실 대체안을 발견하며, 다른 크래프터들과 소통할 수 있는 Flutter 기반 모바일 애플리케이션입니다.

## 주요 기능

- **프로젝트 피드**: Instagram 스타일의 피드로 뜨개질 프로젝트를 둘러보고 발견
- **프로젝트 업로드**: 패턴, 실, 바늘 정보와 함께 뜨개질 프로젝트 공유
- **Re-Yarn/Re-Needle 추천**: 패턴에 대한 대체 실과 바늘 조합 찾기
- **검색**: 패턴 이름, 실, 바늘 사이즈로 프로젝트 검색
- **사용자 프로필**: 다른 뜨개질 작가를 팔로우하고 커뮤니티 구축
- **인증**: 이메일/비밀번호 및 소셜 로그인 (Google, Kakao)

## 기술 스택

- **프레임워크**: Flutter (Dart)
- **상태 관리**: GetX
- **백엔드**: Supabase (BaaS)
- **플랫폼**: iOS & Android

## 프로젝트 구조

```
lib/
├── app/
│   ├── core/
│   │   ├── theme/          # 앱 테마 및 스타일링
│   │   ├── utils/          # 유틸리티 함수
│   │   ├── values/         # 상수 및 색상
│   │   └── widgets/        # 재사용 가능한 위젯
│   ├── data/
│   │   ├── models/         # 데이터 모델
│   │   ├── providers/      # API 프로바이더
│   │   └── repositories/   # 데이터 리포지토리
│   ├── modules/            # 기능 모듈
│   │   ├── auth/           # 인증
│   │   ├── home/           # 홈 피드
│   │   ├── profile/        # 사용자 프로필
│   │   ├── project/        # 프로젝트 업로드/상세
│   │   ├── search/         # 검색 기능
│   │   └── recommendation/ # 실/바늘 추천
│   ├── routes/             # 앱 라우팅
│   └── services/           # 서비스 (Supabase 등)
├── config/                 # 앱 설정
└── main.dart              # 앱 진입점
```

## 시작하기

### 필수 요구사항

- Flutter SDK (>= 3.35.4)
- Dart SDK (>= 3.9.2)
- iOS/Android 개발 환경

### 설치 방법

1. 저장소 클론:

```bash
git clone <repository-url>
cd otte
```

2. 의존성 설치:

```bash
flutter pub get
```

3. Supabase 설정:

   - [supabase.com](https://supabase.com)에서 프로젝트 생성
   - `lib/config/supabase_config.dart` 파일에 프로젝트 정보 입력

4. 앱 실행:

```bash
flutter run
```

## 개발

### 특정 플랫폼에서 실행

```bash
# iOS
flutter run -d ios

# Android
flutter run -d android

# 연결된 모든 기기
flutter run -d all
```

### 코드 분석

```bash
flutter analyze
```

### 테스트

```bash
flutter test
```

## 다음 단계

- [ ] Google 로그인 구현
- [ ] Kakao 로그인 구현
- [ ] Supabase 데이터베이스 스키마 설정
- [ ] 이미지 피커를 사용한 프로젝트 업로드 구현
- [ ] 추천 엔진 구축
- [ ] 푸시 알림 추가
- [ ] 검색 기능 구현

## 문서

자세한 내용은 [PRD.md](docs/PRD.md)를 참조하세요.
