X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["625" "Tuesday" "25" "April" "2017" "10:47:45" "+0200" "Dejan Bosanac" "dejan@nighttale.net" "<CAGeh-pGUHvb09esu_-vekerggwQWU8i64btEE_qgYmkw5o4XUw@mail.gmail.com>" "23" "[oss-security] [ANNOUNCE] CVE-2015-7559 - DoS in client via shutdown command" nil nil nil "4" "2017042508:47:45" "[oss-security] [ANNOUNCE] CVE-2015-7559 - DoS in client via shutdown command" (number mark "U       dejan@nightt Apr 25   23/625   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2015-7559 - DoS in client via shutdown command\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32270 invoked by uid 550); 25 Apr 2017 08:47:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32240 invoked from network); 25 Apr 2017 08:47:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=0ROAMD3fTm+ZwnlmdiGXvVHtOUlNtFp1vtXWSkXa7kQ=;
        b=AjYpDVzKq4WM94Ex8CotQqTa0aeRQCq70VdDuuT2Qvp6IyWJdMJ1Mqxz4GAGYEYew+
         MD/9RtoT2NcCdfF5m5clGsF3fdwpPxQeE8hJjKt0CHZQblhmA5L9mSEFyxjqcVw1A7jo
         6KVumSlxeeDZI8aONfyMBPCTMd+TEaF0kTjfQj72eueZBVbuT9TFb/dSm68vNbTEQdQU
         0gBlUvk0Nq56I+mEvsnA+9Au8mulbyNgsvL5+bjmHO1yzCoMcWAZE0YQvRSXfFZsRaLz
         1DMyXk7Y+a0SUneZ43Vw+uDgIwvoz8h/IBzdbSSrMqfFWwFxb5jmd7hagUEFJbiCNopy
         ymMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=0ROAMD3fTm+ZwnlmdiGXvVHtOUlNtFp1vtXWSkXa7kQ=;
        b=B39ZGnFCm1gDo2kKeC0Qs3EPF4l0iHgYjU6Ok1iS+ctVEaocIY7l0TzzGpn8Sb3o1F
         1PNWOcYt00XgnasJX5M6GNWD1thtn0UDduc8FkrEAUu8DSIfCx/kkdTCNgmSPUcL5hrH
         DkoBdBaXsKX3VD+ul6rX4avCWpFW86I5sNhjFVvuG77r8/31HroO2gZkZsZbnEWk50ao
         oPgLz7D3DmM0ckSBisoW2yMW6TJSbw9VjMITG3+/BRYlnt0hrl2eWAdVDbdPXAYV8eo7
         JXlGpVRJIrqIwWwqz0eoYuRr8WwB4YVEvWe6Ay5VCdAFHlOgXnHCPb5KVausGMe2QzHa
         735g==
X-Gm-Message-State: AN3rC/6aE0ufqGyEA/5cbFI/bn0ltPBJWQiwbmKCo7nkNeix7j6eZLec
	zb7NvVLtcSsCvrwJMp5leKo1fI0dYg==
X-Received: by 10.80.134.5 with SMTP id o5mr4147430edo.93.1493110066245; Tue,
 25 Apr 2017 01:47:46 -0700 (PDT)
MIME-Version: 1.0
Sender: chubrilo@gmail.com
From: Dejan Bosanac <dejan@nighttale.net>
Date: Tue, 25 Apr 2017 10:47:45 +0200
X-Google-Sender-Auth: iVkwmNkWpW05v4idG5uDaKPq6Xc
Message-ID: <CAGeh-pGUHvb09esu_-vekerggwQWU8i64btEE_qgYmkw5o4XUw@mail.gmail.com>
To: "dev@activemq.apache.org" <dev@activemq.apache.org>, 
	"users@activemq.apache.org" <users@activemq.apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com, 
	Apache Security Response Team <security@apache.org>, Chess Hazlett <chazlett@redhat.com>
Content-Type: multipart/alternative; boundary=f403045c2b2a1bf73a054df9c765
Subject: [oss-security] [ANNOUNCE] CVE-2015-7559 - DoS in client via shutdown command

--f403045c2b2a1bf73a054df9c765
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

There following security vulnerability was reported against Apache
ActiveMQ 5.14.4 and older versions.

Please check the following document and see if you=E2=80=99re affected by t=
he issue.

http://activemq.apache.org/security-advisories.data/CVE-2015-7559-announcem=
ent.txt?version=3D1&modificationDate=3D1493024710000&api=3Dv2

Apache ActiveMQ 5.14.5 with appropriate fixes was released and
are available for upgrade.


Regards
--
Dejan Bosanac
http://sensatic.net/about

--f403045c2b2a1bf73a054df9c765--
