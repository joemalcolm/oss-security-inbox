X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["738" "Wednesday" "28" "March" "2018" "10:53:44" "+0300" "Tomer Brisker" "tbrisker@redhat.com" "<CAE=eJsfopNJPRAyMr_3PmPnk4mfBKkRZKwgqjVKwPmsb4hWwjQ@mail.gmail.com>" "21" "[oss-security] Foreman 1.9+ SQL injection in dashboard page" nil nil nil "3" "2018032807:53:44" "[oss-security] Foreman 1.9+ SQL injection in dashboard page" (number mark "U       tbrisker@red Mar 28   21/738   " thread-indent "\"[oss-security] Foreman 1.9+ SQL injection in dashboard page\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18315 invoked by uid 550); 28 Mar 2018 08:24:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9880 invoked from network); 28 Mar 2018 07:54:37 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=p66sBQb4qt5oucw4Bc/eFfHisQTvurVNvdmsssKkNnw=;
        b=jsEQ9bN4AP013A5zyajey9pyaNwS+HV2PYlkdmls8EDi26no0Grpz7ZkccZwXdHSM1
         k2Eu47BbdIH51gS9BW+mbppUGo2HwSN4GxtE/xL8kM3yD6Ofoc+VWsA6quvWW7C5ab4U
         DLzikQvb6a4ywXg/RP8ohEERbPKBJ/Ln2G1PbhIBVtVu6KCOuCr8lO4GSKuaXnTzQQ3p
         rBEqDMWQqxvyHMm3rbOXLX0kopBNl3ef8yRs+FX0I/7DmM7mtjwvqVj/Z1tZsf7eZE1y
         8CjtTYfo8/bc98FyqwXuSri4KTt06tqMXWwU8dPW0gye8H33b/GnHqhlA6bsEvl9i9WK
         bU5w==
X-Gm-Message-State: AElRT7ED4/9J96j5dXZ+GNWvgBgpoi+95l8UEdcMJWB8n5BzrfB3nMKu
	RFt2RC7W0DIif7ukeqC2/HUaYPqQ0e9wgS7iSkEVUkyv
X-Google-Smtp-Source: AIpwx49toIDeR0/an+fAcNjn4+Gw/j/ylUo4RapVubXUQ7OVz+gq4/DhCQYKTRk6jawVonWsqVQ6nGmcB3iwT66H6aE=
X-Received: by 10.129.36.13 with SMTP id k13mr1510829ywk.308.1522223665223;
 Wed, 28 Mar 2018 00:54:25 -0700 (PDT)
MIME-Version: 1.0
From: Tomer Brisker <tbrisker@redhat.com>
Date: Wed, 28 Mar 2018 10:53:44 +0300
Message-ID: <CAE=eJsfopNJPRAyMr_3PmPnk4mfBKkRZKwgqjVKwPmsb4hWwjQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a1142834ed5b96505687450f2"
Subject: [oss-security] Foreman 1.9+ SQL injection in dashboard page

--001a1142834ed5b96505687450f2
Content-Type: text/plain; charset="UTF-8"

CVE-2018-1096: One of the parameters passed when saving widget positions on
the dashboard was not properly escaped leading to possibility of SQL
injection. Due to the nature of the query, exploitation is limited to
possible information disclosure and does not allow modifications to the
database. The vulnerable endpoint is only available to authenticated users.

Affects Foreman 1.9 and higher.

Patch available at https://github.com/theforeman/foreman/pull/5363
Fix will be released in Foreman 1.16.1.
For more information see: http://projects.theforeman.org/issues/23028

-- 
Have a nice day,
Tomer Brisker
Red Hat Engineering

--001a1142834ed5b96505687450f2--
