/*------------------------------------------------------------------------------
MEMBERINFO 테이블에 들어가는 데이터는 사용자 정보 데이터로 PASSWORD 컬럼은 BCrypt 알고리즘에 의해 암호화 되어 있다.
이에 암호화 하기 전의 내용을 알려준다.

('test1', 'test1password', '테스트1');
('member1', 'member1password', '준회원');
('member2', 'member2password', '정회원');
  
------------------------------------------------------------------------------*/
INSERT INTO MEMBERINFO
  (ID, PASSWORD, NAME)
VALUES
  ('test1', '$2a$10$m8Qh037dkzEm/nx0d1IYfuYN0vRZD5odzuMhdPQsp.iwjDYuyYd0e', '테스트1');

INSERT INTO MEMBERINFO
  (ID, PASSWORD, NAME)
VALUES
  ('member1', '$2a$10$rJetK7JaAoYsBAVt1s2HsOFdX8U8DntohNVdi4yWw4K0svLxz1V0O', '준회원');

INSERT INTO MEMBERINFO
  (ID, PASSWORD, NAME)
VALUES
  ('member2', '$2a$10$/ekt9FEWnqNiUUPUTnhFguXH2shvu/PPCKmdzY1zJqKgO4dFTcR3i', '정회원');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('ROLE_MEMBER1', '준회원 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('ROLE_MEMBER2', '정회원 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('MEMBER1_BOARD_VIEW', '준회원 게시판 조회 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('MEMBER1_BOARD_INSERT', '준회원 게시판 등록 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('MEMBER1_BOARD_UPDATE', '준회원 게시판 수정 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('MEMBER1_BOARD_DELETE', '준회원 게시판 삭제 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('MEMBER2_BOARD_VIEW', '정회원 게시판 조회 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('MEMBER2_BOARD_INSERT', '정회원 게시판 등록 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('MEMBER2_BOARD_UPDATE', '정회원 게시판 수정 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('MEMBER2_BOARD_DELETE', '정회원 게시판 삭제 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('ADMIN_BOARD_VIEW', '관리자 게시판 조회 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('ADMIN_BOARD_INSERT', '관리자 게시판 등록 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('ADMIN_BOARD_UPDATE', '관리자 게시판 수정 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('ADMIN_BOARD_DELETE', '관리자 게시판 삭제 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('MAIN_VIEW', '메인화면 조회 권한');

INSERT INTO AUTHORITY
  (AUTHORITY, AUTHORITY_NAME)
VALUES
  ('COMMON_VIEW', '공통화면 조회 권한');

INSERT INTO MEMBER_AUTHORITY
  (ID, AUTHORITY)
VALUES
  ('test1', 'ROLE_MEMBER1');

INSERT INTO MEMBER_AUTHORITY
  (ID, AUTHORITY)
VALUES
  ('member1', 'ROLE_MEMBER1');

INSERT INTO MEMBER_AUTHORITY
  (ID, AUTHORITY)
VALUES
  ('member2', 'ROLE_MEMBER1');

INSERT INTO MEMBER_AUTHORITY
  (ID, AUTHORITY)
VALUES
  ('member2', 'ROLE_MEMBER2');

INSERT INTO GROUPS
  (ID, GROUP_NAME)
VALUES
  (1, '관리자');

INSERT INTO GROUPS
  (ID, GROUP_NAME)
VALUES
  (2, '준회원');

INSERT INTO GROUPS
  (ID, GROUP_NAME)
VALUES
  (3, '정회원');

INSERT INTO GROUPS_MEMBER
  (GROUP_ID, MEMBER_ID)
VALUES
  (1, 'test1');

INSERT INTO GROUPS_MEMBER
  (GROUP_ID, MEMBER_ID)
VALUES
  (2, 'member1');

INSERT INTO GROUPS_MEMBER
  (GROUP_ID, MEMBER_ID)
VALUES
  (3, 'member2');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (1, 'ADMIN_BOARD_VIEW');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (1, 'ADMIN_BOARD_INSERT');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (1, 'ADMIN_BOARD_UPDATE');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (1, 'ADMIN_BOARD_DELETE');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (2, 'MEMBER1_BOARD_VIEW');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (2, 'MEMBER1_BOARD_INSERT');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (2, 'MEMBER1_BOARD_UPDATE');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (2, 'MEMBER1_BOARD_DELETE');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (3, 'MEMBER2_BOARD_VIEW');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (3, 'MEMBER2_BOARD_INSERT');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (3, 'MEMBER2_BOARD_UPDATE');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (3, 'MEMBER2_BOARD_DELETE');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (1, 'MAIN_VIEW');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (1, 'COMMON_VIEW');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (2, 'MAIN_VIEW');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (2, 'COMMON_VIEW');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (3, 'MAIN_VIEW');

INSERT INTO GROUPS_AUTHORITY
  (GROUP_ID, AUTHORITY)
VALUES
  (3, 'COMMON_VIEW');

INSERT INTO SECURED_RESOURCES
  (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE, SORT_ORDER)
VALUES
  ('WEB-000001', '비회원 화면들', '/notmember/**', 'url', 1);

INSERT INTO SECURED_RESOURCES
  (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE, SORT_ORDER)
VALUES
  ('WEB-000002', '준회원 화면들', '/member1/**', 'url', 1);

INSERT INTO SECURED_RESOURCES
  (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE, SORT_ORDER)
VALUES
  ('WEB-000003', '정회원 화면들', '/member2/**', 'url', 1);

INSERT INTO SECURED_RESOURCES
  (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE, SORT_ORDER)
VALUES
  ('WEB-000004', '메인화면', '/main.do', 'url', 1);

INSERT INTO SECURED_RESOURCES
  (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE, SORT_ORDER)
VALUES
  ('WEB-000005', '로그인 화면', '/login*.do', 'url', 1);

INSERT INTO SECURED_RESOURCES
  (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE, SORT_ORDER)
VALUES
  ('WEB-000006', '공통화면들', '/common/**', 'url', 1);

INSERT INTO SECURED_RESOURCES
  (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, RESOURCE_TYPE, SORT_ORDER)
VALUES
  ('WEB-000007', '관리자 화면들', '/admin/**', 'url', 1);

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000001', 'ADMIN_BOARD_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000001', 'ANONYMOUS');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000001', 'MEMBER1_BOARD_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000001', 'MEMBER2_BOARD_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000001', 'ROLE_MEMBER1');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000001', 'ROLE_MEMBER2');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000002', 'ADMIN_BOARD_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000002', 'MEMBER1_BOARD_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000002', 'MEMBER2_BOARD_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000002', 'ROLE_MEMBER1');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000002', 'ROLE_MEMBER2');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000003', 'ADMIN_BOARD_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000003', 'MEMBER2_BOARD_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000003', 'ROLE_MEMBER2');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000004', 'ANONYMOUS');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000004', 'MAIN_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000004', 'ROLE_MEMBER1');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000004', 'ROLE_MEMBER2');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000005', 'ANONYMOUS');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000005', 'ROLE_MEMBER1');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000005', 'ROLE_MEMBER2');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000006', 'ANONYMOUS');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000006', 'COMMON_VIEW');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000006', 'ROLE_MEMBER1');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000006', 'ROLE_MEMBER2');

INSERT INTO SECURED_RESOURCES_AUTHORITY
  (RESOURCE_ID, AUTHORITY)
VALUES
  ('WEB-000007', 'ADMIN_BOARD_VIEW');

