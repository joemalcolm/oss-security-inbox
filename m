X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1353" "Wednesday" "13" "May" "2015" "11:16:45" "-0400" "Wade Mealing" "wmealing@redhat.com" "<866799444.15964228.1431530205711.JavaMail.zimbra@redhat.com>" "41" "[oss-security] CVE request for vhost/scsi possible memory corruption." nil nil nil "5" "2015051315:16:45" "[oss-security] CVE request for vhost/scsi possible memory corruption." (number mark "        wmealing@red May 13   41/1353  " thread-indent "\"[oss-security] CVE request for vhost/scsi possible memory corruption.\"\n") "<913152120.15817224.1431506103005.JavaMail.zimbra@redhat.com>" ("<913152120.15817224.1431506103005.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15624 invoked by uid 550); 13 May 2015 15:16:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15597 invoked from network); 13 May 2015 15:16:58 -0000
Message-ID: <866799444.15964228.1431530205711.JavaMail.zimbra@redhat.com>
In-Reply-To: <913152120.15817224.1431506103005.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.51.174]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC42 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE request for vhost/scsi possible memory corruption.
Thread-Index: KZcx+u2wsEpvIVQn35PXAKEVhOT0Sg==
Cc: cve-assign@mitre.org
Date: Wed, 13 May 2015 11:16:45 -0400 (EDT)
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for vhost/scsi possible memory corruption.
To: OSS Security List <oss-security@lists.openwall.com>

Gday,

I'd like to ask for a CVE number for this the issue fixed in [1], as per their description:

-- vhost/scsi: potential memory corruption
This code in vhost_scsi_make_tpg() is confusing because we limit "tpgt"
to UINT_MAX but the data type of "tpg->tport_tpgt" and that is a u16.

I looked at the context and it turns out that in
vhost_scsi_set_endpoint(), "tpg->tport_tpgt" is used as an offset into
the vs_tpg[] array which has VHOST_SCSI_MAX_TARGET (256) elements so
anything higher than 255 then it is invalid.  I have made that the limit
now.

In vhost_scsi_send_evt() we mask away values higher than 255, but now
that the limit has changed, we don't need the mask.
--
The first check that slips past is here:

-- drivers/vhost/scsi.c - vhost_scsi_make_tpg()

 if (vs->vs_tpg && vs->vs_tpg[tpg->tport_tpgt]) 

My theory is that the possible memory corruption happens later:

-- drivers/vhost/scsi.c - vhost_scsi_make_tpg()

  // sets this null pointer, to "tpg" value.
  vs_tpg[tpg->tport_tpgt] = tpg;

When vs_tpg[tpg->tport_tpgt] = 0 

It appears that no Red Hat Enter Linux versions are affected as the config
directive CONFIG_VHOST_SCSI is not enabled in Red Hat Products.

Thanks

Wade Mealing
Red Hat Product Security

1] http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=59c816c1f24df0204e01851431d3bab3eb76719c
