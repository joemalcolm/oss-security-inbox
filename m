X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2205" "Friday" "27" "April" "2018" "00:39:42" "+0200" "nongiach nongiach" "nongiach@gmail.com" "<CABVn_oo4q7Re5N=n9gZ_bbM=-xbdk7MB3g2bKfRnrFf8Y3ryoA@mail.gmail.com>" "56" "[oss-security] CVE-XXX (quasselclient/quasselcore version 0.12.4): Heap Remote Code Execution and Null Pointer DDOS" "^Cc:" nil nil "4" "2018042622:39:42" "[oss-security] CVE-XXX (quasselclient/quasselcore version 0.12.4): Heap Remote Code Execution and Null Pointer DDOS" (number mark "U       nongiach@gma Apr 27   56/2205  " thread-indent "\"[oss-security] CVE-XXX (quasselclient/quasselcore version 0.12.4): Heap Remote Code Execution and Null Pointer DDOS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4083 invoked by uid 550); 27 Apr 2018 08:18:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26493 invoked from network); 26 Apr 2018 22:39:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=kmGYpKNQ4TqeVaNEqzasPCEc0rI8phzMHIYeLz4b/9A=;
        b=u3Adpy2WvFr5TZPj4twBlPE+YOMXAWOsMjgvWHQYW1nVdtGMVuJnEN7k4bJ/5TTxqt
         5A6dtNmsvJF3K1RsQg1zJem6WIImQBJdHC+SwHAbmTBIlbOqzPMjdEaUCQlGL2DUh9pU
         D0l0vSjA9xsSLsau/9jobvo9eK7VS/kfD+j8UtQeOoVkcUVO0FZRPjxoJAyq/31YuUDz
         BvtixymBVCyhNCTdRNjyCXVYbu1svA2JD+zJWVJBkwbecsq4bqPeLhRyemIYcsdkx0Qb
         KEZ/strO3qsQ3xKbdooODhNi2TNZAsDwZEexDLTbsu9Z6RB1hSMvbLtwFOPEV5A8RGRL
         P7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=kmGYpKNQ4TqeVaNEqzasPCEc0rI8phzMHIYeLz4b/9A=;
        b=uApO+9BjW+kq2LFmQquydYkP92+/l8kv7Lxq35VdZO8GnR7F+TP+u4xh+47XJwoabu
         hwZ30Aoma4UCzHQEn8349WYrbduaRWvUHQTtOhqNmmGg8y/wSo8Khs+SHeIer0Y1oTD9
         kM40HBNmT5UKwGoVs4NbjsG+9wq6ewuDLvZX46JsB6vf6RJQcb5ZjxLv+rp+zKlanWND
         yYMu/L79Z1pTFTG1Ai6XtLBToG69ldkU+YBjcXWRmumouCZPJQdrRK6STnRrpmkGHqhE
         1QJFt9F/CpMBKr8xA3f2pwgjRGwwamjEkuBY/OW6xGebo3jfd3xk5U9WEWFz8tmpYmfr
         +wuw==
X-Gm-Message-State: ALQs6tCM3rCMlI1D1MLaQXfl6rCHxJXzSbmMFQNnRo5nU6rHzyNpC4Us
	3B3H9WtH+4asjW3Qz+I0O4DJA2bIlDmJ++gItyW8oA==
X-Google-Smtp-Source: AIpwx4+aIB699dEVvuZdcLO7nNjh/aRN5o+f8AY+C0kv+BAblFIjbjdN3OIiyf36Kncu+s6QDCc1uYm2frrZQT9m7MQ=
X-Received: by 2002:aca:d052:: with SMTP id h79-v6mr20347181oig.330.1524782383470;
 Thu, 26 Apr 2018 15:39:43 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CABVn_oo4q7Re5N=n9gZ_bbM=-xbdk7MB3g2bKfRnrFf8Y3ryoA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000539e82056ac810b2"
Cc: Kurt Seifried <kseifried@redhat.com>, sputnick@quassel-irc.org
Date: Fri, 27 Apr 2018 00:39:42 +0200
From: nongiach nongiach <nongiach@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-XXX (quasselclient/quasselcore version 0.12.4):
 Heap Remote Code Execution and Null Pointer DDOS
To: oss-security@lists.openwall.com

--000000000000539e82056ac810b2
Content-Type: text/plain; charset="UTF-8"

 Hey,

two vulnerabilities have been fixed in quassel, an IRC connection
multiplexer,
one with a high severity and another with a low severity, they are both
publicly fixed:
- these patches apply cleanly to 0.12.4 sources
- 0.12.5 release (Tuesday 24.04) includes these patches, distros have been
notified for the embargo.

==============================================
Vuln 1:
Title: quasselcore, corruption of heap metadata caused by qdatastream
leading to preauth remote code execution.
Severity: high, by default the server port is publicly open and the address
can be requested using the /WHOIS command of IRC protocol.
Description: In Qdatastream protocol each object are prepended with 4 bytes
for the object size, this can be used to trigger allocation errors.
Source: void DataStreamPeer::processMessage(const QByteArray &msg),
datastreampeer.cpp line 62
CWE: A heap corruption of type CWE-120 exists in quassel version 0.12.4 in
the quasselcore that allows an attacker to remote code execution.
Patch: https://quassel-irc.org/pub/misc/0001-Implement-
custom-deserializer-to-add-our-own-sanity-.patch
Screen POC: https://i.imgur.com/JJ4QcNq.png
Credit: @chaign_c
Information: This vulnerability is not specific to qdatastream.

==============================================
Vuln 2:
Title: quasselcore DDOS
Severity: low, impact only a quasselcore not configured.
Description: A login attempt causes a NULL pointer dereference because when
the database is not initialized.
Source: void CoreAuthHandler::handle(const Login &msg),
coreauthhandler.cpp  line 235
CWE: A NULL Pointer Dereference of CWE-476 exists in quassel version 0.12.4
in the quasselcore that allows an attacker to denial of service.
Patch: https://quassel-irc.org/pub/misc/0002-Reject-
clients-that-attempt-to-login-before-the-core.patch
Credit: @chaign_c

==============================================

With lead dev agreement, POC will be released here
https://github.com/nongiach/CVE/ in one month from now.
A big thx to quassel team for their quick responses and reaction.

CVE number assignation is ongoing.

Thx.

--000000000000539e82056ac810b2--
