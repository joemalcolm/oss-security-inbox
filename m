Received: (qmail 30422 invoked by uid 550); 20 Apr 2023 17:56:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8159 invoked from network); 20 Apr 2023 16:13:06 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AAQBX9fBvUu6s0CeI3BcuqOEayBnZDnDI0APppTCK7cYaMD6iJuzwfJ1
	Qj2oE9CguenXYFmE9pGVrnj3yBQIxi60OqEh7RY=
X-Google-Smtp-Source: AKy350aw1jfy6LZUJbVYp9XDmH16IGoj5i+SGgZy1oRswZLymfUilEuadi65M9/cS1/GvRIAuMd16KPKpvny2aLBka0=
X-Received: by 2002:a05:6402:1a57:b0:506:94ea:9af1 with SMTP id
 bf23-20020a0564021a5700b0050694ea9af1mr3031497edb.8.1682007148975; Thu, 20
 Apr 2023 09:12:28 -0700 (PDT)
MIME-Version: 1.0
From: Huajie Wang <benjobs@apache.org>
Date: Fri, 21 Apr 2023 00:12:17 +0800
X-Gmail-Original-Message-ID: <CAKYehMbynyKHX8Qehab06G70Y0EBNCVDUwHxDJm+k92R4s_Tpw@mail.gmail.com>
Message-ID: <CAKYehMbynyKHX8Qehab06G70Y0EBNCVDUwHxDJm+k92R4s_Tpw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev <dev@streampark.apache.org>
Content-Type: multipart/alternative; boundary="0000000000009fdd6505f9c6ce7c"
Subject: [oss-security] CVE-2022-46365: Apache StreamPark (incubating): Logic error causing
 any account reset

--0000000000009fdd6505f9c6ce7c
Content-Type: text/plain; charset="UTF-8"

Logic error causing any account reset in Apache StreamPark


Severity: Important


Versions Affected:

Apache StreamPark 1.0.0 before 2.0.0


Description:


When the user use apache streampark and successfully logs in, to
modify his profile, the username will be passed to the server-layer as
a parameter, but not verified whether the user name is the currently
logged user and whether the user is legal, This will allow malicious
attackers to send any username to modify and reset the account,



Mitigation:

Users of the affected versions should apply one of the following


- Upgrade to Apache StreamPark 2.0.0 or later

References:
https://streampark.incubator.apache.orghttps://www.cve.org/CVERecord?id=CVE-2022-46365




Best,
Huajie Wang

--0000000000009fdd6505f9c6ce7c--
