X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["604" "Wednesday" "7" "March" "2018" "01:17:46" "+0100" "Slavco Mihajloski" "slavco.mihajloski@gmail.com" "<CAJznFrtqyw8rGLZ0DV9e8ZkKH+YAwjZOfaxD+0eBKCAje9YnYQ@mail.gmail.com>" "17" "[oss-security] Authentication bypass mainwp-child < 3.4.5" nil nil nil "3" "2018030700:17:46" "[oss-security] Authentication bypass mainwp-child < 3.4.5" (number mark "U       slavco.mihaj Mar  7   17/604   " thread-indent "\"[oss-security] Authentication bypass mainwp-child < 3.4.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3306 invoked by uid 550); 7 Mar 2018 03:39:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25755 invoked from network); 7 Mar 2018 00:17:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=jlNsTzAi56S5+HVNqDp70IQ6FidhCXQp8wez70wKVEk=;
        b=HpLImtPYtK0r7p2oLeua8j14npT8n+Mz7G+4I62PrdCnxzO5b19x7JM/wEhiGEwmsA
         woG67NVRyXTxjJq6GLnfJeKVaqWcJ/LqeXpo66gvZJ2GplNSGHghG3RKcpcLBzCPzbl+
         epx84pDORf2mexqSpj1cDTqdIsDa6SOrMt6qB2hQkRqNdwLk/Zc66IHIjnx1SbH2Rgjc
         CC9ZbQouGZusYTqRqBhDDMNXGexj/Hakxr5kXBKZXnIZPD9C3mtyjqTKSFdtMESV+9yO
         Rw3E7TBh9T62I26RhU0rNhw12+Q64NKngFY1yeN8ccpoWI64J/RT56Nb90MTpM2N6RJA
         pdaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jlNsTzAi56S5+HVNqDp70IQ6FidhCXQp8wez70wKVEk=;
        b=deHfnfgYltBjJXaTlTd8YbwKKMj+hjb8+2LORaKxR+dUSQqQUFXyYs+4gasjkVpLwG
         HTZ8Ewg00EDM1ew2U3OMvm4oemZwbF6QjiAmN9sb404++YKXk4elUqZy+/3mAtEPpK/x
         tlMOv8IWhWRJga1+FeycdskVg+bfAMJCVySJwA5ORkjdTAwMIaOvI3sZccHFjEuxtofg
         8uFYPx0dAiM9JzDFewQu91f25UIUfexRl86BwufumIPlEbqvqqbMKso4Ksip4xuHyWo7
         9hfwU6I62ryh4F/eYe76/TjvoUkUD/uNlKI6NNbxZYrrTbGO6ljNihmTTkDZNCHJr5Ot
         H3FA==
X-Gm-Message-State: APf1xPBpeNI2eQekT+E1GRMwNwvGGA9xmnnOjN5/iE2/UbDpUSsyIShU
	7v135va309cXb23eiVR2GNCAuip6RSk9YR1e7lmat0+N
X-Google-Smtp-Source: AG47ELtH3PachL6RfKqbaQ9Wth7Oq9ftSs9S2VqMSyxhCURe8KcMv7SANDvMRl/MQ0lYzQPm4SU2yUU4d09d5F/at58=
X-Received: by 10.31.49.138 with SMTP id x132mr13303159vkx.174.1520381867106;
 Tue, 06 Mar 2018 16:17:47 -0800 (PST)
MIME-Version: 1.0
From: Slavco Mihajloski <slavco.mihajloski@gmail.com>
Date: Wed, 7 Mar 2018 01:17:46 +0100
Message-ID: <CAJznFrtqyw8rGLZ0DV9e8ZkKH+YAwjZOfaxD+0eBKCAje9YnYQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a1143f81c1ca6fe0566c77df6"
Subject: [oss-security] Authentication bypass mainwp-child < 3.4.5

--001a1143f81c1ca6fe0566c77df6
Content-Type: text/plain; charset="UTF-8"

https://wordpress.org/plugins/mainwp-child/ remote administration plugin
for Wordpress with 300k+ active installations.

There is authentication bypass on mainwp-child < 3.4.5 and due the nature
of the Wordpress itself, it is a RCE too.


Disclosure:
https://medium.com/websec/authentication-bypass-rce-on-300k-live-websites-using-mainwp-child-3-4-5-30a69097f633

Patch:
https://github.com/mainwp/mainwp-child/commit/1b03e47300d1ee30776a63f4d526e45e1baef4e3#diff-b7c78d39c028166665d187e06e5058a7

--001a1143f81c1ca6fe0566c77df6--
