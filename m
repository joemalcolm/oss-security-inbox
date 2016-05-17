X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1091" "Tuesday" "17" "May" "2016" "20:40:37" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do5JnkxQhd90yXCmkM_OXBKMxTZN9sYzGVRJL98q33v_TQ@mail.gmail.com>" "37" "[oss-security] RHSA-2016:1086 libndp: denial of service due to insufficient validation of source of NDP messages" nil nil nil "5" "2016051718:40:37" "[oss-security] RHSA-2016:1086 libndp: denial of service due to insufficient validation of source of NDP messages" (number mark "U       cbuissar@red May 17   37/1091  " thread-indent "\"[oss-security] RHSA-2016:1086 libndp: denial of service due to insufficient validation of source of NDP messages\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13993 invoked by uid 550); 17 May 2016 18:41:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13800 invoked from network); 17 May 2016 18:40:49 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=Uj5/WlseUBAPuyt0Be0l01/epsxQILjcTMXh46pTh70=;
        b=JfXngEu/DJHjLfnfWVI7eUcjbwXchFRmoFK/dcWaEMKd9H4hGKXIpzQNxwsAhrU/RP
         uzImqHAsYHhgt4wfuEqxTCVZ7QjTM66CwXRfuSK6p1H2jpg+UDGkzl1cKU9EJq5JoLNX
         CwSEaE8InOL6WzrPan3oJljLiC33ZmZg4gAWvOAMdow2M/LaFmH6xWrcGU7YNN0lIYdK
         CeRWNVeShuLAiWldZQKCKGtzLTqVY8byFEN0Y/bsRL3iniqyb1H5PMm6TrG37DDL8jay
         zeuY4F7u4OEoJxnWHQySCAptiIuTFGhTXfGJPYwVEjzadel6ghbG+j8he9duRmDECswj
         fqLA==
X-Gm-Message-State: AOPr4FWAuVlW9yLC2u6RPJI1WcdDEslDRS/wbUI9qFEq5QCg7Tjf+MtfmH0zZQEhdb/4n9t42hbG0728n4Tnqya/
MIME-Version: 1.0
X-Received: by 10.98.29.16 with SMTP id d16mr4253978pfd.142.1463510437325;
 Tue, 17 May 2016 11:40:37 -0700 (PDT)
Date: Tue, 17 May 2016 20:40:37 +0200
Message-ID: <CAKG8Do5JnkxQhd90yXCmkM_OXBKMxTZN9sYzGVRJL98q33v_TQ@mail.gmail.com>
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c03b674beb8b605330e13f1
Subject: [oss-security] RHSA-2016:1086 libndp: denial of service due to insufficient
 validation of source of NDP messages

--94eb2c03b674beb8b605330e13f1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear all,

An improper input validation check, and improper origin check flaw during
the reception of NDP message was discovered in libndp. An attacker in a
non local network could use this flaw to advertise a node as a router, and
cause a denial of service attack, or act as a man in the middle.

The patches enforce that hop limit must be 255, to ensure that the NDP
message
has not been routed.

Patches can be found upsteam:

 -  libndp: validate the IPv6 hop limit
https://github.com/jpirko/libndp/commit/a4892df306e0532487f1634ba6d4c6d4bb3=
81c7f

 -  libndb: reject redirect and router advertisements from non-link-local
https://github.com/jpirko/libndp/commit/2af9a55b38b55abbf05fd116ec097d40291=
15839
  https://people.freedesktop.org/~lkundrak/.libndp/

Known affected packages : NetworkManager >=3D 1.0

Thanks to Julien Bernard (Viag=C3=A9nie) for discovering the issue

Kind regards,
--
Cedric Buissart
Purkynova 99
Brno 612 45

--94eb2c03b674beb8b605330e13f1--
