X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["834" "Thursday" "26" "July" "2018" "10:19:45" "+0100" "Rajini Sivaram" "rsivaram@apache.org" "<CAOJcB383nmC+pxBXoc2JcuD4TXgQrvgjCuovNavmt6sFs4+sBQ@mail.gmail.com>" "52" "[oss-security] CVE-2017-12610: Authenticated Kafka clients may impersonate other users" nil nil nil "7" "2018072609:19:45" "[oss-security] CVE-2017-12610: Authenticated Kafka clients may impersonate other users" (number mark "U       rsivaram@apa Jul 26   52/834   " thread-indent "\"[oss-security] CVE-2017-12610: Authenticated Kafka clients may impersonate other users\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3856 invoked by uid 550); 26 Jul 2018 10:23:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26515 invoked from network); 26 Jul 2018 09:20:01 -0000
X-Gm-Message-State: AOUpUlG4AEnm3ztx9Qh5sAfg7DU6BM+Y8JKqW5FdigIDJNoY6RJ/JSdL
	/DNVUI6dox41Ub94a1SEXuGSzHD3LQn7ClPFSYE=
X-Google-Smtp-Source: AAOMgpfLJZsQM8DmbfWIjgOR1aSfCtQtrg0+VyduTj35pCjjjTobpEMr/rbubPdcABAx1gHFT+t4eN38rGV7skz9/KI=
X-Received: by 2002:a6b:26ca:: with SMTP id m193-v6mr890692iom.91.1532596786088;
 Thu, 26 Jul 2018 02:19:46 -0700 (PDT)
MIME-Version: 1.0
From: Rajini Sivaram <rsivaram@apache.org>
Date: Thu, 26 Jul 2018 10:19:45 +0100
X-Gmail-Original-Message-ID: <CAOJcB383nmC+pxBXoc2JcuD4TXgQrvgjCuovNavmt6sFs4+sBQ@mail.gmail.com>
Message-ID: <CAOJcB383nmC+pxBXoc2JcuD4TXgQrvgjCuovNavmt6sFs4+sBQ@mail.gmail.com>
To: security@kafka.apache.org, oss-security@lists.openwall.com, 
	announce@apache.org, Users <users@kafka.apache.org>, dev <dev@kafka.apache.org>, 
	kafka-clients <kafka-clients@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000004d5010571e37f3a"
Subject: [oss-security] CVE-2017-12610: Authenticated Kafka clients may impersonate other users

--00000000000004d5010571e37f3a
Content-Type: text/plain; charset="UTF-8"

CVE-2017-12610: Authenticated Kafka clients may impersonate other users


Severity: Moderate



Vendor: The Apache Software Foundation



Versions Affected:

Apache Kafka 0.10.0.0 to 0.10.2.1, 0.11.0.0 to 0.11.0.1



Description:

Authenticated Kafka clients may use impersonation via a manually crafted
protocol message with SASL/PLAIN or SASL/SCRAM authentication when using
the built-in PLAIN or SCRAM server implementations in Apache Kafka.



Mitigation:

Apache Kafka users should upgrade to one of the following versions where
this vulnerability has been fixed:


   - 0.10.2.2 or higher
   - 0.11.0.2 or higher
   - 1.0.0 or higher



Acknowledgements:

This issue was reported by Rajini Sivaram.



Regards,


Rajini

--00000000000004d5010571e37f3a--
