Received: (qmail 5266 invoked by uid 550); 27 Jan 2025 06:34:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5229 invoked from network); 27 Jan 2025 06:34:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737959674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CZEWEzncxiHWspAWr3JSfgGNIuUskoAY9haONERFGoA=;
	b=W42nZSCQGsTBlBbeIsSjcg1C7knd53G3pggjHknRUZt19xXEqNTuVoW5TVKlglYCQjCUle
	a0JfJIyNQpRAdpB9kY4qwXbeDYpBz4tKByvbJdUnfgBJxLBQudW3hhBPF8Hkkr8ypUzOlu
	ssFJzeTvAMadAUh9AcMP/1E11BUoPHc=
X-MC-Unique: Xr1yLbayOZaDE7QnpsjK6Q-1
X-Mimecast-MFC-AGG-ID: Xr1yLbayOZaDE7QnpsjK6Q
From: Florian Weimer <fweimer@redhat.com>
To: Pete Allor <pallor@redhat.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <CAEFCzXX4sU9ps3PLcgjOS84+bKAb1qXy_koJdGNMqKokEsDbgg@mail.gmail.com>
	(Pete Allor's message of "Sat, 25 Jan 2025 08:43:25 -0500")
References: <Z4__rJ3_SmmtEIsG@netmeister.org>
	<0a34f769-2a8d-4726-b9d7-6238ec3846e7@oracle.com>
	<2025012512-likely-strainer-4e6d@gregkh>
	<CAEFCzXX4sU9ps3PLcgjOS84+bKAb1qXy_koJdGNMqKokEsDbgg@mail.gmail.com>
Date: Mon, 27 Jan 2025 07:34:27 +0100
Message-ID: <87bjvssr2k.fsf@oldenburg3.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: PzMXLcjaSs9c6RwPZRqoDh-F-cw-1o47Wep5QYyT4U0_1737959672
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] Node.js EOL CVEs: CVE-2025-23087,
 CVE-2025-23088, CVE-2025-23089

* Pete Allor:

> I do agree with Greg K-H that open source projects should become CNAs.
> But do want to note that missing elements of the CVE when submitting
> allows CISA-ADP to 'vulnrich' your data.  Here is where
> misinterpretation and/or lack of understanding by CISA confuses
> downstream users and once you gain that 'critical' stigma in the
> system, you have to be persistent to get that changed.
>
> Is that a problem?  I think so and so do a number of PSIRTs so now we
> have to contend with CISA-ADP and NVD to adjust their scores when the
> CNA is 'the authoritative source' within the CVE Program.

The larger problem is that component scoring tends to be higher than
whole-system scoring.  If a security component fails in its security
function, it certainly deserves an impact rating that reflects that it's
totally broken due to the vulnerability.  But if this component is
integrated into a larger system, impact is often lower and might even be
insignificant due to the way the component is used.

The current system does not really reflect that.  One way to deal with
it could be to treat everything as a fork, but not to decouple from
upstream changes, but to make it clear that the upstream impact ratings
do not apply.

Thanks,
Florian

