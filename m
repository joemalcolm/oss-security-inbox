Received: (qmail 24399 invoked by uid 550); 28 Jan 2025 09:47:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24371 invoked from network); 28 Jan 2025 09:47:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738057628;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9Fa9Gn2j6uwU2eerTqX1yvVSQJ17+O0mUDbHeKKK0s8=;
	b=GHmrFGEmf4BvMnjxejYTexSXwwOFu3Y8XfrJu+PIp9kX7k6zIn01d9VIbR7HQmouOzsGsM
	NbVViiz/gyhGOa23JuXjK73PAbMXaUB5L7J0IlBHCcUdMLtfiq6ysR3kcHuKRL8np0GCE5
	wGS/nhe6cHuVO1SYKly5Y3EQFqMQEsQ=
X-MC-Unique: QUCZuTIQOP-HcrGeVw5ryw-1
X-Mimecast-MFC-AGG-ID: QUCZuTIQOP-HcrGeVw5ryw
From: Florian Weimer <fweimer@redhat.com>
To: Pete Allor <pallor@redhat.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <CAEFCzXXNvs6vLnqv+1y4Ob9=j9CHms5LMYHkXBQhcOcwd_0T-w@mail.gmail.com>
	(Pete Allor's message of "Mon, 27 Jan 2025 18:02:35 -0500")
References: <Z4__rJ3_SmmtEIsG@netmeister.org>
	<0a34f769-2a8d-4726-b9d7-6238ec3846e7@oracle.com>
	<2025012512-likely-strainer-4e6d@gregkh>
	<CAEFCzXX4sU9ps3PLcgjOS84+bKAb1qXy_koJdGNMqKokEsDbgg@mail.gmail.com>
	<87bjvssr2k.fsf@oldenburg3.str.redhat.com>
	<CAEFCzXXNvs6vLnqv+1y4Ob9=j9CHms5LMYHkXBQhcOcwd_0T-w@mail.gmail.com>
Date: Tue, 28 Jan 2025 10:47:01 +0100
Message-ID: <87sep3jmne.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: cumA0TJcKTZKXEt03qJXDJzxcdkY66ovoQMrzzqSDS8_1738057626
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Node.js EOL CVEs: CVE-2025-23087,
 CVE-2025-23088, CVE-2025-23089

* Pete Allor:

> It is why I would advocate for a CVSS review (as we do at Red Hat) and
> then assign a 'Severity Rating' as that now involves how the component
> is used within our software which changes HOW a
> customer/downstream/user should actually view that CVE.

But is this really how it works these days?  For example, if we use a
component to render the in-program documentation (traditionally called
=E2=80=9Conline help=E2=80=9D, but we would consider this offline today), a=
nd the
upstream for this component documents publicly that a vulnerability is
being actively exploited for (user-initiated) remote code execution, we
must fix the component even if it's just used in an offline
documentation viewer.  CVSS impact review does not change that, as far
as I know.

Hence the suggestion of a fork, so that upstream's exploitation
announcements do not carry over 1:1 to the product.

I think this fix-regardless-of-impact requirement is new.
Legitimate-looking sources for inflated impact ratings have been around
for more than a decade, on the other hand.

Thanks,
Florian

