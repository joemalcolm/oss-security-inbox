Received: (qmail 26473 invoked by uid 550); 20 Apr 2023 17:55:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6087 invoked from network); 20 Apr 2023 16:09:33 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AAQBX9d5adONgPmNtwE7jg0prd/DQZITOes7IT4kM9fjmFXEuUY039OJ
	HhnEAXws89SJEVTxnwjEpezhk7GnVArGtVJ+Zy4=
X-Google-Smtp-Source: AKy350aHIzCFwKQIdhiWzgT3mD6T2B3UDVjpGeOe5Y3FXFt0UKjlpyoIM9BBnXfXdQi2Cs9NkKRtfulD4rX9blaiQ2Q=
X-Received: by 2002:a05:6402:2694:b0:506:b94f:3d8f with SMTP id
 w20-20020a056402269400b00506b94f3d8fmr7797746edd.5.1682006958661; Thu, 20 Apr
 2023 09:09:18 -0700 (PDT)
MIME-Version: 1.0
From: Huajie Wang <benjobs@apache.org>
Date: Fri, 21 Apr 2023 00:09:07 +0800
X-Gmail-Original-Message-ID: <CAKYehMa_Fdx---OGfL6DK0Jdm1O67Y6VG0jfN1ukPf6zoDLRgg@mail.gmail.com>
Message-ID: <CAKYehMa_Fdx---OGfL6DK0Jdm1O67Y6VG0jfN1ukPf6zoDLRgg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev <dev@streampark.apache.org>
Content-Type: multipart/alternative; boundary="00000000000047e53505f9c6c30d"
Subject: [oss-security] CVE-2022-45802: Apache StreamPark (incubating): Upload any file to
 any directory

--00000000000047e53505f9c6c30d
Content-Type: text/plain; charset="UTF-8"

Apache StreamPark (incubating): Upload any file to any directory


Severity: low


Versions Affected:

Apache StreamPark 1.0.0 before 2.0.0


Description:


Streampark allows any users to upload a jar as application, but there
is no mandatory verification of the uploaded file type, causing users
to upload some risky files, and may upload them to any directory,
Users of the affected versions should upgrade to Apache StreamPark
2.0.0 or later


Mitigation:

Users of the affected versions should apply one of the following


- Upgrade to Apache StreamPark 2.0.0 or later

References:
https://streampark.incubator.apache.orghttps://www.cve.org/CVERecord?id=CVE-2022-45802




Best,
Huajie Wang

--00000000000047e53505f9c6c30d--
