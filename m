Received: (qmail 24025 invoked by uid 550); 12 Mar 2024 14:13:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27913 invoked from network); 12 Mar 2024 13:56:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1710252020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jEOo4jb0H1nggffRq+a7EsIK3zGKS7C7Si/d8pyxlpI=;
	b=iERoeLfuJYY3wKymsNnoihHVkNNq1IhWGS5exLr+JG2W5LR7VeSK9Wka3KMDlqw+hTROog
	5gQM6MXi2K5qgj3L6OlxhMKV9Vnywhh487LxOdZHxoEcuCe7nhTKHSOTjgQ3DyT/Apbog7
	fBCmli+3WHLW08xyklQo/hGg0RvljVc=
X-MC-Unique: eSokSov4MoKuzglaoW23bg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710252011; x=1710856811;
        h=content-transfer-encoding:subject:cc:to:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jEOo4jb0H1nggffRq+a7EsIK3zGKS7C7Si/d8pyxlpI=;
        b=eOyv3FunN7y7mljaXx6JrH1+1+u2AI/CBKeCVLZ6D55Lgqb+ACDPw4CfS2slNTQEX/
         s3m2MbXJ4hC+DWM/E5u4fxz3wST2YZCbprB/IHX98NqoChEUCYr7lCxpWKNq5ZeV8uYm
         rLaOzFjueRGfZ8rGKyN3HF7ey1+Mb2LKUKgpHEP2Q/wt1fynUx4mXL4HsyImjakEM6bz
         eYoFO1kCRp2JvGLf/TA262nQIdFCrg51UTkRxQzKt5+HEQqXlleszZbIAgJ+vDLc00uf
         BslifozY7Sink8biNYsC1GKZVC7BTYzFFZYAbbgnyZsUiCNcvE7DOzyxoML0d3rYGDyt
         vaow==
X-Gm-Message-State: AOJu0YxlrCOv0LIlmJnOLfLCNE7hsBpZzZy1dCWhdI4beniV5yL6y5/u
	b2ZNLEq3peMfBosZmb5x4NUZoAsycfEH1c/kTM6EepKn8jIfK78u3q9KesCINSyCr53kS4jLk7D
	HMGGMxchtAk+F/o/xzI34bECSbyLh++BUhER2g3YYR2kHpTj5X89eXdiv+13ZihAz7YFpXTqYVL
	idvC4yZFXsjmCQ0bZRkV+giquYTZTwTCjFPNSrvFnNQrFwU5o=
X-Received: by 2002:a05:600c:4fce:b0:412:dda8:fbc2 with SMTP id o14-20020a05600c4fce00b00412dda8fbc2mr9074892wmq.16.1710252010823;
        Tue, 12 Mar 2024 07:00:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdXrsn+ckuTskx5J7JEX5yrR2gfv4XI95niJ+SZZ2nI+nQ7P2felNOpqhUZ4hTClw8md0caQ==
X-Received: by 2002:a05:600c:4fce:b0:412:dda8:fbc2 with SMTP id o14-20020a05600c4fce00b00412dda8fbc2mr9074860wmq.16.1710252010400;
        Tue, 12 Mar 2024 07:00:10 -0700 (PDT)
Message-ID: <e46d45e2-dfa7-4e25-bd2c-499495e813f3@redhat.com>
Date: Tue, 12 Mar 2024 15:00:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Dumitru Ceara <dceara@redhat.com>
To: oss-security@lists.openwall.com, ovs-announce@openvswitch.org,
 ovs-discuss <ovs-discuss@openvswitch.org>
Cc: Mark Michelson <mmichels@redhat.com>,
 Frode Nordahl <frode.nordahl@canonical.com>,
 Ilya Maximets <i.maximets@ovn.org>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [ADVISORY] CVE-2024-2182: Open Virtual Network: Insufficient
 validation of incoming BFD packets.

Description
===========

Multiple versions of OVN (Open Virtual Network) are vulnerable to
crafted BFD packets potentially causing denial of service.

OVN supports configuration of gateway chassis and high-availability
chassis groups (via the Gateway_Chassis and HA_Chassis_Group tables in
the OVN_Northbound database).  These group cluster nodes (chassis)
together and provide high availability to them.  OVN logical switch and
router ports can be configured to reference such groups.  In this case
the traffic forwarding decision is influenced by the liveness of the
chassis listed in the group.

In such scenarios OVN automatically enables the OVS Bidirectional
Forwarding Detection (BFD) functionality to monitor the health of remote
nodes and tunnels between them.

BFD packets are transmitted in-band in tunnels that connect OVN chassis,
along with other traffic.  And, by default, OVS will process any BFD
packets received on a tunnel port with BFD enabled.  That makes it
possible for a VM or container connected to an OVN logical switch port
to send BFD packets that will be tunneled to another node and processed
by OVS, potentially changing the BFD state and affecting the forwarding
decisions.

The Common Vulnerabilities and Exposures project (cve.mitre.org) has
assigned the CVE-2024-2182 identifier to this issue.

A way to determine if BFD will be used is to issue the following
commands on the node that runs the OVN central components:

  $ ovn-nbctl --columns name,gateway_chassis list logical_router_port

If the above command returns more than a single gateway chassis
reference for a given port that means OVS BFD has been automatically
enabled.

  $ ovn-nbctl --columns name,ha_chassis list ha_chassis_group

The same applies if the above command returns groups that contain more
than one chassis.

Mitigation
==========

For any version of OVN, in order to prevent the issue, an ACL (Access
Control List) rule can be added to drop BFD packets originated from
logical ports.

For example, the following shell script would configure ACLs on all
existing OVN logical switches:

  for sw in $(ovn-nbctl --bare --columns name list logical_switch); do
      ovn-nbctl acl-add $sw from-lport 32767 'udp && udp.dst == 3784' drop
  done

If OVN is configured by a Cloud Management System (CMS, e.g., OpenStack)
then it is the responsibility of the CMS to program ACLs.  Manual user
configuration might otherwise be overwritten by the CMS.

We do not recommend attempting to mitigate the vulnerability this way
because this will also drop legitimate BFD traffic originated by the
workloads connected to logical switch ports, e.g., BFD sessions
established with external entities.

Fix
===

Patches to fix this vulnerability in currently supported versions of
OVN:

 * 22.03.x:
   https://github.com/ovn-org/ovn/commit/4fdfb2ba84dbc05492a4e37efc1e7af62185ed05
 * 23.03.x:
   https://github.com/ovn-org/ovn/commit/fec1ad85a29b714e42e2dac7e7290f3fb37895f7
 * 23.06.x:
   https://github.com/ovn-org/ovn/commit/adcd6be30098060bc4253d648b86946a63e6297b
 * 23.09.x:
   https://github.com/ovn-org/ovn/commit/c966c35f1b1cd8c5351ccac3051843fbf765c2ae
 * 24.03.x:
   https://github.com/ovn-org/ovn/commit/7852fccb60d0ae780163eac041b1457690c1e3f5

Original patch is located at:
  https://mail.openvswitch.org/pipermail/ovs-dev/2024-March/412425.html

Recommendation
==============

We recommend that users of OVN apply the linked patches, or upgrade to
a known patched version of OVN.  These include:

 * v22.03.7
 * v23.03.3
 * v23.06.3
 * v23.09.3
 * v24.03.1

Acknowledgments
===============

The OVN team wishes to thank the reporter:

  Frode Nordahl <frode.nordahl@canonical.com>

