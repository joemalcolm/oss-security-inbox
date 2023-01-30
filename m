Received: (qmail 14255 invoked by uid 550); 30 Jan 2023 16:49:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11316 invoked from network); 30 Jan 2023 16:43:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=markhack.com; s=dkim; h=Sender:Content-Transfer-Encoding:MIME-Version:
	Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6mmec0iMStkKIiIIVY6gHm+DsGFWm7Gizs8cjMDIa6U=; b=m/nyC3x49Igj32UfdGzVDA6z5b
	c+2F25Sc2nxHXrbZm+gxDwlZZz0QCe41thwAQqs7OhjUeCPq6CLaWVYGy0KXJ6NKPefeuJFWmdEyW
	KG/NpOVvZ7jPvw5CA2gfrIblxPqj653u1uUxnAO/nxvIpe65nFlBXj/DCbZHCwiwskThc4u3HwF5v
	LHafTn51PtZ3znkqPVV7Cob+3QGh/FPwqUcinT1aNTxbZreOXPcm9W6/luZgpA0h+cW/IupdY0dZV
	/FNy5hvvqH1lr4Xpt4CS+h2c3R8bK0XzVifFZZEaz1IV0i7VcIt0/Cj6jK0yNSWXdbvxKrxxTbHwb
	jaEc0KLg==;
X-Authority-Analysis: v=2.3 cv=H7JAP9Qi c=1 sm=1 tr=0
 a=UH8/iCWBfdUmbm4Ft4Vi3Q==:117 a=0LpTLZtb7PxyfqalD3XYnQ==:17
 a=IkcTkHD0fZMA:10 a=RvmDmJFTN0MA:10 a=sdm2wQysh9cA:10 a=JqEG_dyiAAAA:8
 a=QyXUC8HyAAAA:8 a=pbhzjRZzFm-yFbFTmSQA:9 a=QEXdDO2ut3YA:10 a=_UPsMtDdQXcA:10
 a=bXa89YNWa_sA:10 a=m-7u6X-4zz0A:10 a=MmexTcOajuwA:10 a=lPgG1GnSO3sA:10
Message-ID: <ef62abb418ad781fa159cc57b2270e05b0f88d49.camel@markhack.com>
From: Mark Hack <markhack@markhack.com>
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Date: Mon, 30 Jan 2023 10:43:16 -0600
In-Reply-To: <Y9L5/9/Oi732Y+a5@gmail.com>
References: <Y9GEU0G9N5etu+H3@sol.localdomain>
	 <20230125214445.GA8487@openwall.com> <Y9L5/9/Oi732Y+a5@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EN-UserInfo: 9a4d7356ca47e8f598bc04fc7024e3f1:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: markhack@markhack.com
Sender:  Mark Hack <markhack@markhack.com>
X-EN-OrigIP: 75.81.95.68
X-EN-OrigHost: 075-081-095-068.res.spectrum.com
Subject: Re: [oss-security] Data operand dependent timing on Intel and Arm
 CPUs

This is a concern, but if you look into the crypto implementations,
data blinding is applied to mitigate both instruction and power side
channel attacks

Regards

Mark Hack



On Thu, 2023-01-26 at 22:09 +0000, Eric Biggers wrote:
> On Wed, Jan 25, 2023 at 10:44:45PM +0100, Solar Designer wrote:
> > Hi Eric,
> > 
> > Thank you for bringing this up in here.
> > 
> > There was also a brief Twitter thread on it in August 2022, started
> > by
> > Adam Langley:
> > 
> > https://twitter.com/agl__/status/1561374334714671104
> > 
> > In it Adam Langley, wrote:
> > > It appears that Intel doesn't guarantee constant-time execution
> > > of _any_
> > > instructions on Ice Lake or later unless a configuration bit is
> > > set:
> > > https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/best-practices/data-operand-independent-timing-isa-guidance.html
> > > 
> > > Ice Lake was released in 2019 but this information is only a few
> > > months
> > > old. So hopefully multiplication etc actually is always constant-
> > > time on
> > > existing chips and this is just preparing for the future?
> > > 
> > > I guess the steady state is that every OS sets this DOITM bit all
> > > the
> > > time, but Intel get to publish benchmarks based on variable-time
> > > instructions and claim that they're using the default
> > > configuration?
> > 
> > My reply was:
> > > Reading between the lines, I think this is a vulnerability and
> > > mitigations disclosure for 6th to 12th gen (fixed in 13th?),
> > > disguised
> > > as a feature. They discovered that "data values may delay
> > > instruction
> > > retirement by, at most, one cycle" for vector multiplication and
> > > bit
> > > count.
> > 
> > On Wed, Jan 25, 2023 at 11:34:43AM -0800, Eric Biggers wrote:
> > > I'd like to draw people's attention to the fact that on recent
> > > Intel and Arm
> > > CPUs, by default the execution time of instructions may depend on
> > > the data
> > > values operated on.  This even includes instructions like
> > > additions, XORs, and
> > > AES instructions, that are traditionally assumed to be constant-
> > > time with
> > > respect to the data values operated on.
> > 
> > FWIW, I'm not aware of any indication that e.g. "additions, XORs,
> > and
> > AES instructions" have data-dependent timing on CPUs released so
> > far.
> 
> Sure.  To be clear, I don't have specific knowledge of how particular
> instructions behave on particular CPUs.  Research into the real-world 
> behavior
> is absolutely needed.  I'm just going off what the Intel
> documentation is saying
> is possible / allowed now.  Additions, XORs, and AES-NI instructions
> all show in
> the following list of instructions:
> https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/resources/data-operand-independent-timing-instructions.html
> 
> Now, that list is titled "Data Operand Independent Timing
> Instructions".  That
> sounds good; it means they have data operand independent timing,
> right?
> 
> Actually, not necessarily.  If you read the documentation fully,
> specifically
> the "Data Operand Independent Timing Mode (DOITM)" section of
> https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/best-practices/data-operand-independent-timing-isa-guidance.html,
> it says that the instructions in that list are only guaranteed to
> have data
> operand independent timing ***if the DOITM flag is enabled***.
> 
> Also, Intel writes:
> 
> 	"For Intel® Core™ family processors based on microarchitectures
> before
> 	Ice Lake and Intel Atom® family processors based on
> microarchitectures
> 	before Gracemont that do not enumerate IA32_UARCH_MISC_CTL,
> developers
> 	may assume that the instructions listed here operate as if
> DOITM is
> 	enabled."
> 
> So, Intel is saying that on older CPUs, the instructions in that list
> are
> guaranteed to always have data operand independent timing.  But on
> newer CPUs it
> is ***explicitly not guaranteed by default***.
> 
> I'd be happy if people looked into this and found that in the real
> world, data
> operand independent timing by default is actually still the status
> quo.
> 
> Of course, that would mean that while enabling DOITM would not
> currently be
> important, the overhead of enabling it would also be very small.
> 
> Conversely, if DOITM gets more expensive in the future, surely that
> could only
> be the result of it becoming much more important to enable anyway...
> 
> - Eric

