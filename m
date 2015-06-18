X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["993" "Thursday" "18" "June" "2015" "15:56:42" "-0700" "Dean Pierce" "pierce403@gmail.com" "<CAFOKM3rxSCqBwpLyFDmkkQai8WHK3qz==n2WtOkZ_Wf_65-dqg@mail.gmail.com>" "22" "[oss-security] Joomla! Administrator -> web shell esclalation" nil nil nil "6" "2015061822:56:42" "[oss-security] Joomla! Administrator -> web shell esclalation" (number mark "U       pierce403@gm Jun 18   22/993   " thread-indent "\"[oss-security] Joomla! Administrator -> web shell esclalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22505 invoked by uid 550); 18 Jun 2015 22:56:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22473 invoked from network); 18 Jun 2015 22:56:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=xH7AAYQN3LkA347bDjkGcQ4yvdszqhT7AQFFO6C8Ryc=;
        b=ilHQGsakn07k/2nHgRoI7Ia2FOIf+Z5rNLdKyMBU5tf59q1+QHk8b/aDHPi1wtKSLv
         CaHsEx9jQTrJUIC9bXVvkg/XiFhECJeg/QqY9Nhyt/Hfmq3vcq0syqmZVUNECPGcUdgM
         MbWLPVwrihiwdl91MXxDd90ygTkkjrKMmjrmB8o4GG9XmspdJSk9eQNapYKGMOrMFWEP
         8JScf0qGnHNt+I9tFWqGQqpJ3QSaG2k8mFXdeO5Ebn4YAFUm+hjWK68qaLeS+wkMxVx3
         0c+Zy57tWpIHQ0GkZysq16lvbZvszq16PnV1MNJRYDiVD5Y17XkBzRZ/ttScH6X7hamD
         M5cw==
MIME-Version: 1.0
X-Received: by 10.50.41.8 with SMTP id b8mr586597igl.38.1434668202256; Thu, 18
 Jun 2015 15:56:42 -0700 (PDT)
Date: Thu, 18 Jun 2015 15:56:42 -0700
Message-ID: <CAFOKM3rxSCqBwpLyFDmkkQai8WHK3qz==n2WtOkZ_Wf_65-dqg@mail.gmail.com>
From: Dean Pierce <pierce403@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Joomla! Administrator -> web shell esclalation

I'm not sure if this is more of a bug or an exploitation technique
(depending on Joomla's threat model), but once you have obtained
Administrator or Super User access to a Joomla server, you can
escalate to a shell on the server.

In the "media manager" options, you can add to the list of allowed
file extensions.  Interestingly, if you try adding "php" to the
allowed file extensions, it still won't let you upload a web shell.

As it turns out, mod-php, by default on Ubuntu, will execute any files
with an extension that matches this regex : "^.ph(p[345]?|t|tml|ps)$"
If you rename your webshell shell.php3, and add "php3" to the allowed
file extensions, and it will upload just fine.

Possible fixes include tweaking the hardcoded blacklist such that it
matches the default mod-php regex, not serving uploads directly from
the web root, requiring shell access to modify the extension allow
list, etc.

Sent a bug report to Joomla! Security Strike Team on June 2nd, no response.

  - DEAN
