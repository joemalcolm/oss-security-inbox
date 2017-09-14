X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1674" "Thursday" "14" "September" "2017" "14:12:21" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20170914121219.GW11536@dhcp-25-225.brq.redhat.com>" "40" "Re: [oss-security] Linux BlueBorne vulnerabilities" "^Date:" nil nil "9" "2017091412:12:21" "[oss-security] Linux BlueBorne vulnerabilities" (number mark "        pmatouse@red Sep 14   40/1674  " thread-indent "\"Re: [oss-security] Linux BlueBorne vulnerabilities\"\n") "<CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>" ("<CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9404 invoked by uid 550); 14 Sep 2017 12:12:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9383 invoked from network); 14 Sep 2017 12:12:36 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 7D410806BD
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=pmatouse@redhat.com
Message-ID: <20170914121219.GW11536@dhcp-25-225.brq.redhat.com>
References: <CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Thu, 14 Sep 2017 12:12:24 +0000 (UTC)
Date: Thu, 14 Sep 2017 14:12:21 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux BlueBorne vulnerabilities
To: oss-security@lists.openwall.com, Armis Security <security@armis.com>

Hi,

On Wed, Sep 13, 2017 at 09:08:31PM +0000, Armis Security wrote:
> We are writing to inform you of two security vulnerabilities we have found
> in the Bluetooth stack in Linux (BlueZ).
> 
> These vulnerabilities have been made public yesterday (Sept. 12, 2017), and
> are part of 8 vulnerabilities we have disclosed to various vendors (as a
> group they are called "BlueBorne").
> 
> Both Linux-related vulnerabilities where disclosed to
> distros@vs.openwall.org.
> The kernel-related vulnerability (CVE-2017-1000251) was also disclosed to
> security@kernel.org
> Both disclosures began on Sept. 5, 2017, and patches were made available
> yesterday and today.

at https://www.armis.com/blueborne/, "A Coordinated Disclosure"
paragraph you write that:

"Linux - Contacted August 15 and 17, 2017. On September 5, 2017, we
connected and provided the necessary information to the the Linux kernel
security team and to the Linux distributions security contact list and
conversations followed from there. Targeting updates for on or about
September 12, 2017 for coordinated disclosure."

May you please share with us who was contacted on August 15th and 17th
and why you waited until September 5th with the disclosure to
linux-distros and security@kernel.org?

If it was because of the strict embargo rules for linux-distros and
security@kernel.org mailing lists, next time please feel free to reach
Red Hat directly via secalert@redhat.com . We will honour any reporter
set embargo and can contact other vendors directly. And also work on the
fixes.

Thank you,
-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
