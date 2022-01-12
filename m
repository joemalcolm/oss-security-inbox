X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1283" "Wednesday" "12" "January" "2022" "13:32:51" "+0100" "Ana Oprea" "anaoprea@google.com" nil "36" "[oss-security] CVE-2021-22569: Protobuf Java, Kotlin, JRuby DoS" nil nil nil "1" nil nil (number mark "U       anaoprea@goo Jan 12   36/1283  " thread-indent "\"[oss-security] CVE-2021-22569: Protobuf Java, Kotlin, JRuby DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-22569: Protobuf Java, Kotlin, JRuby DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11724 invoked by uid 550); 12 Jan 2022 12:54:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29935 invoked from network); 12 Jan 2022 12:33:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=B7+5pUR3YUDhwRTowgMxIlRr7xCCGPQi49+/uqTDomw=;
        b=eLTlJ4DP1qz8nobWhFgIRJXaCA23FkvIRnsbKOUn8ouNiK/sJPCVxfkMc1ZkyCIRy1
         qj16p/c23fKy2jqZ4aqssc7+r6rG2u2xP4zjHScNIwEXyIPXRF0vwvWO57+iskfpK17m
         g80XtfeyKSlquEqlXcamawieSKIgQok/EtWRtuBj8RZDkKT5YaFd2GJ7OlICE9SrkdGD
         5h8tNqGXvnLzm6zXIaFfMIc20vZgWxCJ8b434qzIGzFwZ4BqxQdwOQvMB/Rp/phfz00l
         GEg6wOqE7K0qFVOjOGn/pV6pCihWgQK1XImpJZHMub2PdN/gsW9bXVnyD4jhlenESQwI
         1zHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=B7+5pUR3YUDhwRTowgMxIlRr7xCCGPQi49+/uqTDomw=;
        b=FjsCyNKG84tE5XAwRjAqmObJk/z4CZ5LDO7UNx2DbdpYg/l0Xb5djJjBicYD7w6hna
         0CcOTPfNTAQXlIyu50+3Y7F9zBMIZ4Zo0mhpQudNfaiUEh1HPo43/A7HNvCTAm/SQ2vf
         ZolC8NOYpU0TK9Y7cf94elWcO0NGYs2VdqPiss5HN3bdsaTSw5q9OCS/P/cI1t6ZhO+X
         zz3iJsRqEHCKyMRXsFuQT4IBEDbSIM66VCtAksaflBsKMriAWPcfgOKLnN0pBPRS0I8s
         Ix/ewT3IQfH04QnxKr4Jp6sZLNCLw3Um9TEZsyOD1uK+FTU6E6cZpaeYlEWEd496hNrX
         gbDA==
X-Gm-Message-State: AOAM531AuZ7cWZf/UqXGj2BTVdg6/ZwBWEBEar25i69HakHuB19aSycw
	DVeaMuiG6/sOMC9cbqc5jZ4CuH30EP6AHmmjv/a9FQWfcYMrBw==
X-Google-Smtp-Source: ABdhPJwlvc2oi8u2NJhE1KN0SG6nrEeX1ZCI3aS8uFXf2DYis00hmzJGmlwHld/TM/0CrGeOKmheC9kyA186h0fDpLs=
X-Received: by 2002:a05:6102:1274:: with SMTP id q20mr604977vsg.5.1641990783019;
 Wed, 12 Jan 2022 04:33:03 -0800 (PST)
MIME-Version: 1.0
From: Ana Oprea <anaoprea@google.com>
Date: Wed, 12 Jan 2022 13:32:51 +0100
Message-ID: <CABbtqzEDcwmS3=iu-cFjTOuxBa-50kNxQVRvoTwq3M73Ohf1yQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000059256d05d561c5f9"
Subject: [oss-security] CVE-2021-22569: Protobuf Java, Kotlin, JRuby DoS

--00000000000059256d05d561c5f9
Content-Type: text/plain; charset="UTF-8"

Summary
A potential Denial of Service issue in protobuf-java was discovered in the
parsing procedure for binary data.
- Reporter: OSS-Fuzz [1]
- Affected versions: All versions of Java Protobufs (including Kotlin and
JRuby) prior to the versions listed below. Protobuf "javalite" users
(typically Android) are not affected.

Severity
CVE-2021-22569 High - CVSS Score: 7.5 [2]
An implementation weakness in how unknown fields are parsed in Java. A
small (~800 KB) malicious payload can occupy the parser for several minutes
by creating large numbers of short-lived objects that cause frequent,
repeated GC pauses.

Proof of Concept
For reproduction details, please refer to the oss-fuzz issue [3] that
identifies the specific inputs that exercise this parsing weakness.

Remediation and Mitigation
Please update to the latest available versions of the following packages:
- protobuf-java (3.16.1, 3.18.2, 3.19.2)
- protobuf-kotlin (3.18.2, 3.19.2)
- google-protobuf [JRuby gem] (3.19.2)

[1] https://github.com/google/oss-fuzz
[2] https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-22569
[3] https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=39330

Kind regards,
Ana

--00000000000059256d05d561c5f9--
