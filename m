X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1434" "Saturday" "5" "May" "2018" "07:52:08" "-0700" "Bryan Pendleton" "bpendleton.derby@gmail.com" "<CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>" "35" "[oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" nil nil nil "5" "2018050514:52:08" "[oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" (number mark "U       bpendleton.d May  5   35/1434  " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9997 invoked by uid 550); 5 May 2018 14:52:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9409 invoked from network); 5 May 2018 14:52:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=vuJFyhxOJgk1KDJoz0ynG6ilbdsisGWMZ7GiwhSH2io=;
        b=I7N1Aq8tNJ+ig9+URaTPvMu0zxWFZaEEq54PEoVzrRjdOJo5goLmq+4JN/txFiS7v8
         wZGd/iYadrjVd/MdrcPrqQknLCfwTN9LSiS6ImrN1uK5fwBQyqMs4vUitpf0yTxaFzxo
         BlF/t/8EbTfIoTVuqy8EgGonLH7PGMtjilZr+kzZ3bH/wofSktdKkSBsu0vQ2kJfmgxO
         5dGbh+lTD6eZ7pv3rbLL/tJEQ2Eed/XvKY371zxhaOnwmx7l3sx3X8CUa/TcpkrwzAi9
         mEQANDGKmuE33PbtrAiC4mTqSImG1ZYlr+8VonwOqj4g+8k+FBHzsCPprg+AwJRaXot6
         bIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=vuJFyhxOJgk1KDJoz0ynG6ilbdsisGWMZ7GiwhSH2io=;
        b=Qn+60TqUOk8/KgN3RkRnYdpEZTsYzMLFdSgrTYo7DJgjWTo1YsWDl4bTfKlumVOecH
         cVyP799EyBB0pDnuH/pmm3lPUG+VyaPCE38znCgnb+HrHD3xBlbmPxPHSMKtVWMXzZoC
         4kVywl6QyNEVtmhJvrM0C0CsLxMViEObjxQnXdpDnytq72x79qF1sqWGsbBt9BQ6b10v
         eqarNqQV3GUr01ytOU+DQboqLuwod5hTrb6UTtMbtILnbH6ysLPXlZyEFSyR/3MpqYob
         4tiU3o6HlZPBjc8U/WsiRNMGZmJYf5VbOEcZOv1pDJEnjlmW7o7KOVpU3o7409SDrEca
         OfIg==
X-Gm-Message-State: ALQs6tAjGTVi27/9gsmxqWTydta6Rs9wF9Mi2MD+l64fUjdA+4SzYx4t
	Og+R61ZdL9slMYssSfPAvd6WIc4AL9LZtVxT/ic=
X-Google-Smtp-Source: AB8JxZoY45rd+wvmS1jbGfBywak2VpENVnDVkdZeloASpHpSzZR8Y6TY6jiFrtOkPLhKHqaQ8/oo8pIabY2r+FGFOwY=
X-Received: by 2002:a1f:b081:: with SMTP id z123-v6mr27398025vke.119.1525531929064;
 Sat, 05 May 2018 07:52:09 -0700 (PDT)
MIME-Version: 1.0
From: Bryan Pendleton <bpendleton.derby@gmail.com>
Date: Sat, 5 May 2018 07:52:08 -0700
Message-ID: <CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>
To: derby-dev@db.apache.org, Derby Discussion <derby-user@db.apache.org>, 
	security <security@apache.org>, oss-security@lists.openwall.com
Cc: gregory draperi <gregory.draperi@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability

CVE-2018-1313: Apache Derby externally-controlled input vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Derby 10.3.1.4 to 10.14.1.0

Description:
A specially-crafted network packet can be used to request the Derby
Network Server to boot a database whose location and contents are under
the user's control. If the Derby Network Server is not running with a
Java Security Manager policy file, the attack is successful. If the
server is using a policy file, the policy file must permit the
database location to be read for the attack to work. The default
Derby Network Server policy file distributed with the affected releases
includes a permissive policy as the default Network Server policy, which
allows the attack to work.

Mitigation:
Users should specify an explicit security policy file, as described here:
http://db.apache.org/derby/docs/10.14/security/csecjavasecurity.html

Derby release 10.14.2.0 disallows the specially-crafted network packet,
and also modifies the default Derby Network Server policy file to be
significantly less permissive (the default file access policy is now
limited to the derby.system.home directory and the directory from
which the Derby jar files were loaded). It is still recommended that
production installations of the Derby Network Server should specify
an explicit security policy file.

Credit:
This issue was discovered by Gr=C3=A9gory Draperi
