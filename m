X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["410" "Thursday" "12" "October" "2017" "08:12:59" "-0400" "Graham Christensen" "graham@grahamc.com" "<874lr4fttg.fsf@grahamc.com>" "13" "[oss-security] Re: Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" "^Date:" nil nil "10" "2017101212:12:59" "[oss-security] Re: Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" (number mark "        graham@graha Oct 12   13/410   " thread-indent "\"[oss-security] Re: Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra\"\n") "<87h8v5b2rf.fsf@xps13.shealevy.com>" ("<87h8v5b2rf.fsf@xps13.shealevy.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5700 invoked by uid 550); 12 Oct 2017 12:13:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5666 invoked from network); 12 Oct 2017 12:13:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grahamc.com; s=google;
        h=from:to:subject:in-reply-to:references:date:message-id:mime-version
         :content-transfer-encoding;
        bh=taVmbqR6bZc7ODwZ18sV5/G341axrh4hrWbpkCKxQsQ=;
        b=SmcjVUuJqC6jZm0cx+mi67LPdQBfRfIAi4houCvIu7HE4VW+JsqxZdbUdVVZzwa78u
         tzbSzNRbeZx6NJPqa7N/TNAAG0siuMNlHIx8EXzfXaJ7s70h2/6KmqpYXQHl1LC8JKAr
         K7M4Q8DN955rXiJ4c2Bum0RMl9NxKJcFFpoSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:in-reply-to:references:date
         :message-id:mime-version:content-transfer-encoding;
        bh=taVmbqR6bZc7ODwZ18sV5/G341axrh4hrWbpkCKxQsQ=;
        b=RbjLvpQi/9cNAfQTlN/Jk73NRS7mURNH7BXM0amDgGGafuV6J5GtqTuqmaCHoXqBi3
         R4yT6yX6i4Kg9bA4QQHQGT0zqzRMRTkDihVJG6O7XwLwhaYJbXJDPwqQ9dEtiumXVAz7
         Wic3CBOKVGezsMuVaTcl4S8c5JYYJcJZxhYGTFk9JLvb610EwlEyRmr/EdURFUg73GSk
         kudRLwdfVXXTEO9kimnuFKu+kbgZQui2DFmraEn/7pvTUcSrWx7Csda+zsJ/RDvBqM3u
         U/nuqHB0DYoInXysll47Bzhl1FRf4E8tS7qivtc68RgFxFBodoCHlIMgotoPy2V5/j0S
         YtYA==
X-Gm-Message-State: AMCzsaV+0YF6yqcUPkxl30W1bb3FSc5LRtcnAPPs/RXi8iSXt/PTpPdt
	3PoX7NpmW9OZ+uyWd0PKvKs5Lwv++9o=
X-Google-Smtp-Source: AOwi7QCmPF+Ix4PmGtu18UtwRAVMvDbBDlnTzjPQrETkpOnx1P78SSDROIics0sh5wwTO0pxcUXxJA==
X-Received: by 10.200.37.230 with SMTP id f35mr3447400qtf.335.1507810381297;
        Thu, 12 Oct 2017 05:13:01 -0700 (PDT)
In-Reply-To: <87h8v5b2rf.fsf@xps13.shealevy.com>
References: <87h8v5b2rf.fsf@xps13.shealevy.com>
Message-ID: <874lr4fttg.fsf@grahamc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Oct 2017 08:12:59 -0400
From: Graham Christensen <graham@grahamc.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra
To: oss-security@lists.openwall.com


One follow-up for the discussion on if this is a DoS or privilege
escalation, in the logs we saw:

    Service exited due to signal: Killed: 9 sent by nix-daemon[54108]

and were able to (inconsistently) reproduce this with other unprivileged
users.

This indicated to us that we hadn=E2=80=99t tripped just a crashing bug, but
actually escalated beyond the normal access control protections of kill.

Graham
