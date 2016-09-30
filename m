X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1310" "Friday" "30" "September" "2016" "17:57:28" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do7TtAE4D4u3YrHdhh44QmgvxyP4PwA1dOwD79pVRwqU8g@mail.gmail.com>" "41" "[oss-security] CVE request: pacemaker DoS when pacemaker remote is in use" "^Cc:" nil nil "9" "2016093015:57:28" "[oss-security] CVE request: pacemaker DoS when pacemaker remote is in use" (number mark "U       cbuissar@red Sep 30   41/1310  " thread-indent "\"[oss-security] CVE request: pacemaker DoS when pacemaker remote is in use\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20179 invoked by uid 550); 30 Sep 2016 15:58:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20133 invoked from network); 30 Sep 2016 15:58:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=iGLZZuidJsu/l+C5Bl7DC1NS8tp1dCta++rtfdCTazk=;
        b=gWD1xElVhWIz+cJAE3kyu2OHLNiWJ+wT5DN5Gj2BD2txQ/sRzl/qC+hYAlamLVM4k6
         /V9SAZBjQxOOCwpeOHFUwZR62mcdnRwWW+mp4an80LJiQ49Roq9U2dZE4FzcpejH3Eiz
         OI6DBWqqF5LWB3DPBBGA4Z9/hUBPHVNkAAEFZoMBf9T8JPCgjmoFoOVDQ20TCXU22s+e
         w0q+9kqDpxpI/TSgTRFAnfTLqhuRKSSW3w0gRIhUBqWlJZ3fUv/prckulgrgDbanhS82
         xEq2iVi/IauL9qiqtljSut41QQmaW24QSl8D/J3nqUlmxfPRxUBO3qCQyLzsV33qY1Zt
         11Aw==
X-Gm-Message-State: AA6/9RnlZnlEul1L7Ex2QRb4q2QKhNc1laDo3HlwsbIRiskbFRmCVOtEJ8lEyMsYueyBsezyvQ3+mXXEvaa3Cenn
X-Received: by 10.98.222.3 with SMTP id h3mr4992405pfg.168.1475251068761; Fri,
 30 Sep 2016 08:57:48 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAKG8Do7TtAE4D4u3YrHdhh44QmgvxyP4PwA1dOwD79pVRwqU8g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c129130e8903d053dbba733
Cc: cve-assign@mitre.org
Date: Fri, 30 Sep 2016 17:57:28 +0200
From: Cedric Buissart <cbuissar@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: pacemaker DoS when pacemaker remote is in use
To: oss-security@lists.openwall.com

--94eb2c129130e8903d053dbba733
Content-Type: text/plain; charset=UTF-8

Hi all,

Last February was reported a vulnerability against pacemaker when pacemaker
remote is in use, allowing a remote, unauthenticated, attacker to launch a
DoS attack.
I have not found a CVE request for it, so here is one :

If a corosync node is connected to a pacemaker_remote node, the
connection can be trivially killed simply by connecting to the remote on its
standard TCP port (typically 3121):

2016-02-18T18:06:45.258661+00:00 d52-54-77-77-77-01 crmd[2637]:    error:
Unexpected pacemaker_remote client takeover. Disconnecting

Takeover is allowed in order to support migration of the remote primitive
from
one corosync node to another, but since this is a trivial denial of service
attack, it should only be allowed once a valid authkey is provided.

The flaw has been fixed in Pacemaker-1.1.15

=> Upstream bug :
 - Bug 5269 - DoS: valid authkey should be required for takeover of a
Pacemaker remote
http://bugs.clusterlabs.org/show_bug.cgi?id=5269

=> Upstream fix :
 - Fix: remote: cl#5269 - Notify other clients of a new connection only if
the handshake has completed (bsc#967388)
https://github.com/ClusterLabs/pacemaker/commit/5ec24a26

Thanks!

-- 
Cedric Buissart,
Product Security

--94eb2c129130e8903d053dbba733--
