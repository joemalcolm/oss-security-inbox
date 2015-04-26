X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1138" "Sunday" "26" "April" "2015" "16:56:48" "+1000" "Shubham Shah" "admin@shubh.am" "<CAG8UnYPVfOtdRd4G7wcUQtJdRZYJS04AcpMadL0EPj0M_wUKHA@mail.gmail.com>" "33" "[oss-security] CVE request - TelescopeJS Information Leakage: User BCrypt password hash post-authentication" nil nil nil "4" "2015042606:56:48" "[oss-security] CVE request - TelescopeJS Information Leakage: User BCrypt password hash post-authentication" (number mark "        admin@shubh. Apr 26   33/1138  " thread-indent "\"[oss-security] CVE request - TelescopeJS Information Leakage: User BCrypt password hash post-authentication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5331 invoked by uid 550); 26 Apr 2015 06:57:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5313 invoked from network); 26 Apr 2015 06:57:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=tJxPJ0Dge4/smVXKgmMljWKp/c/pxu+8iwqOnz8hm3M=;
        b=T0nzgBym6RSpVejw+fy+gVNqTAIlb+EsvRol7HLyDHsZ0eqM6TSAUKboRDGN8B6t2+
         zFo1GzALzFUuGuuA0t791IM2S8pQ5873hjcfszk0crmuVPbi6LHH/YWz4XVxyRS0ROot
         xDx+ojHtnoYFIunsqBAoxAuviuqvRKE3LYwGVkSVUHNlqBxgbGXo3gg/ZYEWlKH3WPHf
         Rr848r1CI0JH9UAgHJTjgiGbe3RBxTCiqzjEJz6f/rHh4FkW90f5nKBFhxumP8YTa52E
         w6v3fmKZ9faGeNB0lVue/BmfkKCp3IuP4ihOFgWBmYK88X/kr+8GWaTI3O1/Sk8/9Tzj
         Sc3A==
X-Gm-Message-State: ALoCoQldMKLAcmjEaMvw5i9ujP1J4aT7iFXIO7FGtdhmQpFWLadKCPZCk1cSrckPle7gTWGseHZo
MIME-Version: 1.0
X-Received: by 10.180.211.102 with SMTP id nb6mr10611496wic.32.1430031408713;
 Sat, 25 Apr 2015 23:56:48 -0700 (PDT)
X-Originating-IP: [122.107.120.72]
Message-ID: <CAG8UnYPVfOtdRd4G7wcUQtJdRZYJS04AcpMadL0EPj0M_wUKHA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c38ab222635605149b225e
Date: Sun, 26 Apr 2015 16:56:48 +1000
From: Shubham Shah <admin@shubh.am>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - TelescopeJS Information Leakage: User BCrypt password
 hash post-authentication
To: oss-security@lists.openwall.com

--001a11c38ab222635605149b225e
Content-Type: text/plain; charset=UTF-8

Hi,

TelescopeJS leaks the users BCrypt password hash in incoming websocket
messages once the user has authenticated. Due to the fact that TelescopeJS
is an expressjs web application, it uses the model of storing session
information in the browsers localStorage.

This means that if an attacker is able to find a single cross-site
scripting flaw in MeteorJS, they would then be able to extract the users
password hash from incoming websocket messages. This hash could then be
cracked.

The bcrypt hash is sent in incoming websocket messages every time the user
object is needed by the application.

This vulnerability affects TelescopeJS installations below version 0.15.

A discussion about these issues can be found here:
https://github.com/TelescopeJS/Telescope/issues/838

The commits leading to the fix for this flaw can be found here:

https://github.com/TelescopeJS/Telescope/blob/dd6130637c00a8166cc4647153b441cb32b7ca61/lib/publications.js#L29-L31

If any more details are required, please let me know.

Thank you,
Shubham

--001a11c38ab222635605149b225e--
