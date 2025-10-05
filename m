Received: (qmail 17494 invoked by uid 550); 5 Oct 2025 06:23:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17451 invoked from network); 5 Oct 2025 06:23:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1759645405; x=1759731805; bh=srKSZdlPnE
	tyhVUxC1NgB5rcgx8G5aKf9yQ60A5OlhA=; b=RvZkEwx9dEkVyEfjt2MbBc68K5
	huUNfY67jxSlfL78/YRm1+VJIyiPRKFTm0p05eAHne2erCSVgTUZINi/pLdxyQVg
	Kp7sAP+SPuzYgWbQeseWs6ANyKa7K6LX37f6BsyL8WKNAghgvLWanOhzsvn1/aFL
	ciuJVifdcRBd/yqXS4+DT6wpTBuF9bFEaI23rAzuCRkEz4Yxk3FiY7ZqCmtZSkmz
	T5fWYJ6zQ6ie685GRR+WJxeOZhsGYNemi71wreDbB5M2n+GNe2PCh7WCzq0vLfLz
	WUeLG6I1dNPH5jcNIeUsoK4GHQJ+zD7+czLer4p16MBSaGrEDwQ5DjNEcQ5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1759645405; x=1759731805; bh=srKSZdlPnEtyhVUxC1NgB5rcgx8G5aKf9yQ
	60A5OlhA=; b=VgZNEVj8+MAiA9XERyxgTN6j2KndUWHuoAOORwvBFS6InW2CDW/
	19tEKSoF0HRSyhUuhkhZXZgw4EatpFg8fKsDP6a29qTuhtiaea5Y0waudys/vo5j
	TZf+cw+9IdM1DE0/p87Y9O0APNt3GQw99WZTZWY74HSKFzQX0GTG6IRfijX6IkxZ
	lBYo4H2avKAvVboLXyujGQwifBXCX8CaUS2uF1G0lB4XwIWnAL24wn3Y8BLgxfsv
	l5dMgB53j3GHixAmfV8ubAS0WVy71/ak8mkhAqc/jb8JGcLjGIfaOfUI0lBMqIsV
	LHzpwt4evRcJqBIsebmhURpfMaWQwxoAx/A==
X-ME-Sender: <xms:3A7iaKmdOcBTZcMuSJyy6GqxJSRky8Ov0wxCNjimj3vdCQZiB7Hc-A>
    <xme:3A7iaPw_1Kls2seAXrDiCtWqg8acVJUhdnrJjVNRekHJ23Xy8gFFKCItjY8musHRj
    gZy-CUKaGGc_LGnMsbTshYnBxkKMZ9oKZ79gRJzJJprVLT9pg>
X-ME-Received: <xmr:3A7iaAMk8m5Yi3s6WBhITwkGu2c4NLLQm9yeWBza_d0rhd06t9cKtdy-R-lMhq9utOcZNoPX_F5ZMJG1jC-QxzMFCCmJLBAiPmfHaQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdelfeelfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertddttd
    dvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucgg
    tffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeugeegve
    euuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
    ohhmpehgrhgvgheskhhrohgrhhdrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpe
    hsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdho
    phgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:3A7iaLTyzzPa6WUS7XjrG5Gj2xs3Omi6r_SZC1_PQAAPTbEURO3qxA>
    <xmx:3A7iaGbBHJVNDTS5SJD6oLtwGehF4WxSVNU2tCs9-onOozJ23YOi0Q>
    <xmx:3A7iaA302cLKSm9K59gcWq8WW6Ma7aSqOnyH5ITFrlsDoJ7C0oHrjA>
    <xmx:3A7iaOWfij7r0YIJg2Nurm9Ls8BTM_jAijYoH2aWI9nX6JAMZEO04Q>
    <xmx:3Q7iaH-J0wLK1CEOS8ULn0Y621U2UM6SC-26nnjS5zCQ6ROEklndpjZu>
Feedback-ID: i787e41f1:Fastmail
Date: Sun, 5 Oct 2025 08:23:21 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2025100533-foam-capsize-cb0b@gregkh>
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
 <2025060713-aloe-decency-a74c@gregkh>
 <40b4dd6d-eb00-4076-8f38-546a1c3589a1@gmail.com>
 <2025100255-cage-squall-f003@gregkh>
 <e61844e3-47d2-4209-b34a-6d94f963113f@gmail.com>
 <2025100324-army-silica-497b@gregkh>
 <68cd6070-5909-41cf-9194-63967b2dff80@gmail.com>
 <e07ac7ab-e1a0-41e0-ba73-92d14add790f@gmail.com>
 <2025100406-grew-evaluator-a961@gregkh>
 <Saa9qa3DunOcTi5N@aceecat.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Saa9qa3DunOcTi5N@aceecat.org>
Subject: Re: [oss-security] Re: Linux kernel: HFS+ filesystem implementation,
 issues, exposure in distros

On Sat, Oct 04, 2025 at 09:23:57PM -0700, nightmare.yeah27@aceecat.org wrote:
> On Sat, Oct 04, 2025 at 07:45:08AM +0200, Greg KH wrote:
> 
> > > The idea is that if triaging 13 bugs a day is unsustainable,
> 
> > What do you mean by this?  I never stated it was unsustainable, in
> > fact it's just fine from our side.  What is the problem you are
> > wanting others to help in solving with here exactly?
> 
> I can guess Attila's meaning as an outsider. It seems strange to me
> that as one so deeply engaged in these issues you (Greg) cannot do
> that.
> 
> The meaning is: it *would* be unsustainable *if* you actually started
> triaging.  You don't triage now, because "a bug is a bug".

I don't understand this, sorry.  Right now, we _do_ triage all bugfixes
that are added to the Linux kernel and classify them if they meet the
requirement of a "vulnerability" as required by cve.org or not.  Any
that do, we assign a CVE to.  Any that do not, we do not.  There are 3
of us doing this work, in our public git repo, plus we have 2 "guest"
reviewers also helping out at times, so everyone can see what is
happening before we assign CVEs.  We don't always agree on things, but
that's why there are 3 of us doing the work so we can vote, and of
course, _anyone_ else can always ask for other CVEs to be assigned, or
ask that existing ones be rejected based on their reviews.

That is the work we do to "triage" on a weekly basis.

Again, not all bugfixes that go into the Linux kernel meet the cve.org
definition of "vulnerability", and so, we do not mark all Linux bugfixes
with a CVE.  If we were to do that, the rate of CVEs would be much
higher than the current average of 13 per day (which if you look at
applicability of those CVEs to your system, is on average, or a bit
below, the other two major operating systems out there, so Linux is not
an outlier at all.)

Hope this helps explain things a bit better.  I think this means I need
to write up even more documentation as to exactly how we do all of this
work as this information isn't more widely known.

thanks,

greg k-h
