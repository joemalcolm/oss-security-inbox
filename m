Received: (qmail 15601 invoked by uid 550); 10 Apr 2024 11:58:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5845 invoked from network); 10 Apr 2024 11:57:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spwhitton.name;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1712750234; x=
	1712836634; bh=B63DFjaCgNNvHZZOHLQd+yZyw28l8z97xH+hlDrLEps=; b=X
	xIq6NJKWB/1hVMmwY6HBXregyupK0pWrXcxn4J03hceVMr09nui4kwxyVCan3mTK
	wnzo0m8J83r2i1kQpU88GTsPtzXLqf7Jx4Ec97LhRexJM1eTi6+DE9Q0DlMtiKZm
	JT8e3+InuIo3ye9jPXphRD24FZb0T6kWM1PAriMb6wOoShv2WtiiyzCTeOOXgltM
	7/+CZmG1RkDWjMYB9jVZrdRatK/TRfPhPLyKjM78e0kGs76wRrugCjgLisEV8eE9
	BDjdNI3Cm0OF9Fn/7qSWZMejYDfcGSHibhJGyRjz5hVHSCoBvAyBfVpwQ/kOVnQK
	TWUJIO/uOlXiOAq9D+RJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1712750234; x=1712836634; bh=B63DFjaCgNNvHZZOHLQd+yZyw28l
	8z97xH+hlDrLEps=; b=JGIhtCdzYOYMlDKcc/RBn/sVr/94CQycyRzmnpUmKRRj
	4NvUs3kEyS+wrnMb3GZp55HZR9K5mtWaWYcOT5jRsMvoJ68AR++VP6xf9pqAtjtJ
	soCM2LQLDPsJ134gMKXt2oap1z2mFRQJszVWsrGz5Qv6HRoPTuYr8hTHoo3lGbIt
	xvt0LRHrRyqF7CHqjaXwGppJL6MYmgZUbDSWloUhrybUBbsnkQW0OUA2GnfIcnzN
	Nti8okeBnmv1ZBV6HJsbCdZ168EK0ULYSZlzpSqqcEWSivSgMy/COlIpT8WT6/lL
	TuK58VL5EIMzEXsrsPYlrNGhH0DByc9tboRQ9S4qOQ==
X-ME-Sender: <xms:mn4WZg6sLCpQ2g_Z6LINWrn5OrhA374JhfQ6X11lRdYY4W-mwjzBtA>
    <xme:mn4WZh7ydyBa9FMCyOU4EmET8jVOCNX3nVlzamwpeWT-I6qFHNA5JRpaDxLlP5J1G
    vCPym9oUOT_Lpl4Hw>
X-ME-Received: <xmr:mn4WZvdiocXOyMsxaZnVKTiOJLUx4yS9AGEthxOBTYyFWCjGQ-XIfmcJ8lAe59GtEsIbB0Ev2-vSiA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudehiedggeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufgjfhgffffkgggtsehttd
    dttddtredtnecuhfhrohhmpefuvggrnhcuhghhihhtthhonhcuoehsphifhhhithhtohhn
    sehsphifhhhithhtohhnrdhnrghmvgeqnecuggftrfgrthhtvghrnhepvdejtedtieetje
    egjeekgffghedtkeeltdeftdetkefgueekfedtudfhteeljeeknecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepshhpfihhihhtthhonhesshhpfi
    hhihhtthhonhdrnhgrmhgv
X-ME-Proxy: <xmx:mn4WZlJ5ONe3k6Sh-Rq6c9haNvNF3xUHk8op5NlDJYqCGUmBCp5zLw>
    <xmx:mn4WZkIY549VRWNBSMgk73FQ5cCOchcLrKLyZG_rABKGebeZoVXIwA>
    <xmx:mn4WZmw87_7UlwrhAoW9yjrkA0kq7ApPPgFy5SVaXg2K0YRL2he1wg>
    <xmx:mn4WZoJTU0qCs89S3B4eVjVWwnAAd-exU1NFUXLUvaUVNCRfwdPgdg>
    <xmx:mn4WZpEQV3q7bGTM_JIlT6lPZjoTf0YolEKMOH_yLZwZ9XbkM7YXVHsN>
Feedback-ID: i23c04076:Fastmail
From: Sean Whitton <spwhitton@spwhitton.name>
To: Ihor Radchenko <yantar92@posteo.net>
Cc: emacs@packages.debian.org,  emacs-devel@gnu.org,
  oss-security@lists.openwall.com
In-Reply-To: <87y19nu22i.fsf@localhost> (Ihor Radchenko's message of "Mon, 08
	Apr 2024 18:44:21 +0000")
References: <874jccjpvy.fsf@melete.silentflame.com> <87y19nu22i.fsf@localhost>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Wed, 10 Apr 2024 19:57:11 +0800
Message-ID: <87bk6he8h4.fsf_-_@melete.silentflame.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

Hello,

On Mon 08 Apr 2024 at 06:44pm GMT, Ihor Radchenko wrote:

> Sean Whitton <spwhitton@spwhitton.name> writes:
>
>> The description for CVE-2024-30203 is
>>
>>     In Emacs before 29.3, Gnus treats inline MIME contents as trusted.
>
> Before Emacs 29.3, there was no concept of trusted or untrusted content
> in Emacs. We introduced it specifically to control whether we allow
> running LaTeX on the contents of a given buffer. (And even in Emacs
> 29.3, the concept of untrusted contents is not yet official) So, at least
> the title is misleading.

Right, it's a purely preliminary change, not fixing any holes in itself.

>> and for CVE-2024-30204 is
>>
>>     In Emacs before 29.3, LaTeX preview is enabled by default for e-mail
>>     attachments.
>
> This is closer to what was happening.
> Note that LaTeX preview itself was not a problem. The problem was that we
> executed actual latex program without user query with input taken from
> buffer text to generate the previews (using the default settings). LaTeX
> input can be specifically constructed to cause DOS when using LaTeX
> compiler, which is especially dangerous when the input is coming from
> emails.
>
> Also, only GNUS and MUA clients re-using gnus libs (at least, notmuch
> and mu4e) were affected. Not rmail, AFAIK.
>
>> ...
>> I think it's the first one -- can you confirm?
>
> I hope that the above clarified things.

Hmm, thank you, but let me ask a follow-up question: do you agree with
me that there is only one security flaw covered by these two CVEs, and
CVE-2024-30203 is the superfluous one?

-- 
Sean Whitton
