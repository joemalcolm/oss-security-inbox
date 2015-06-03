X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["590" "Wednesday" "3" "June" "2015" "07:35:11" "-0500" "Dennis" "shr3kst3r@gmail.com" "<CAOupQd3ikV8aKBR-w2YRo4x93=YA-x-LY1cK4rMYRxWEoa7z5Q@mail.gmail.com>" "17" "[oss-security] CVE Request: mime-support" nil nil nil "6" "2015060312:35:11" "[oss-security] CVE Request: mime-support" (number mark "        shr3kst3r@gm Jun  3   17/590   " thread-indent "\"[oss-security] CVE Request: mime-support\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24503 invoked by uid 550); 3 Jun 2015 14:42:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15589 invoked from network); 3 Jun 2015 12:35:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=SwG2TERLsONH98T1OaVnviy4be9MDZnGyrYDAFChN8g=;
        b=FKkJ0ggnOLsjlAZZSb0au9AMJaE59TSKciRosgHqAmVUJi0TnDLjLgB1C14vxnI9Ha
         ECtadLZelZePBR5rMT7edEX0gXwTPudY9nu2iFg7pAWVDy1w9v6dRtIx3j987SieFL9Q
         YJ4tV0KmlfdC87vlAOQtviFRBMtoWVVKd/VaMUR2QU5uTbq1ucjo1ooizj6edSUuhNJI
         QLdWIh5j+vP5I1/0LvI/OxIci10yE4SaL4iQqyP6JBZUm4p5G052R4RQdyD6b6NhR9eL
         qiyPiJXVdDKUglMU8fEQYRCfhWolfBN3WS+vcksSVeStc8hnOUwiOEwc0RKsmQBbFJrf
         FTxw==
MIME-Version: 1.0
X-Received: by 10.55.26.165 with SMTP id l37mr57089040qkh.88.1433334911332;
 Wed, 03 Jun 2015 05:35:11 -0700 (PDT)
Message-ID: <CAOupQd3ikV8aKBR-w2YRo4x93=YA-x-LY1cK4rMYRxWEoa7z5Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1142dc1a3bfafc05179c4aeb
Date: Wed, 3 Jun 2015 07:35:11 -0500
From: Dennis <shr3kst3r@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: mime-support
To: oss-security@lists.openwall.com

--001a1142dc1a3bfafc05179c4aeb
Content-Type: text/plain; charset=UTF-8

Hi,

This bug https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=589384 deserves
a CVE.  Basically, in the default configuration of apache + mod_php +
mod_mime, files like test.php.blah will be executed as PHP code.  The
expected behavior is that only test.php will be executed as PHP.  Yes, it
was fixed 5 years ago, but I am seeing it actively utilized against Ubuntu
12.04 (which did not get the fix), specifically against Wordpress plugins
that allow file uploads.

Thanks,
Dennis

--001a1142dc1a3bfafc05179c4aeb--
