Received: (qmail 17615 invoked by uid 550); 27 Jan 2023 09:47:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30060 invoked from network); 26 Jan 2023 22:09:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674770945;
	bh=rM8LCOveNTxIymCnMTt5H+mY8/bkxX8m/SEpLYxiwCg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NXOZJ9Y+gWzPwXfaqc8JL/PJ+a/fEdq+cyHlOfwmN1GyzQ2Vdufrjc2k5yCRHh+2x
	 u36C7AJpoIQz2ebjbkFGQqp5QXovXx6Dt9QkWrdq8MzAHpGTMEDNGVsXi22jRayj5O
	 YKU3HKXk9vnsX8+XJWRiRXtgPFxacBNSnMXcPOa32P0SpErD6j61JHaeSp0Bh/96TN
	 GEzfEUyCpVwrLqBx0Cy7BZkjNMZWz3uD2CDgtWNbUEjCb9rLYnSKaruR/wZXy8whK+
	 HTT2AyS/pbbSi1aul5vTWbZF+9nUSiRBCnmrTaoWh1r7EeEAOOv8h6QmJP3BazqxDc
	 iYlYLMTyaAvrg==
Date: Thu, 26 Jan 2023 22:09:03 +0000
From: Eric Biggers <ebiggers@kernel.org>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Message-ID: <Y9L5/9/Oi732Y+a5@gmail.com>
References: <Y9GEU0G9N5etu+H3@sol.localdomain>
 <20230125214445.GA8487@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230125214445.GA8487@openwall.com>
Subject: Re: [oss-security] Data operand dependent timing on Intel and Arm
 CPUs

On Wed, Jan 25, 2023 at 10:44:45PM +0100, Solar Designer wrote:
> Hi Eric,
> 
> Thank you for bringing this up in here.
> 
> There was also a brief Twitter thread on it in August 2022, started by
> Adam Langley:
> 
> https://twitter.com/agl__/status/1561374334714671104
> 
> In it Adam Langley, wrote:
> > It appears that Intel doesn't guarantee constant-time execution of _any_
> > instructions on Ice Lake or later unless a configuration bit is set:
> > https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/best-practices/data-operand-independent-timing-isa-guidance.html
> > 
> > Ice Lake was released in 2019 but this information is only a few months
> > old. So hopefully multiplication etc actually is always constant-time on
> > existing chips and this is just preparing for the future?
> > 
> > I guess the steady state is that every OS sets this DOITM bit all the
> > time, but Intel get to publish benchmarks based on variable-time
> > instructions and claim that they're using the default configuration?
> 
> My reply was:
> > Reading between the lines, I think this is a vulnerability and
> > mitigations disclosure for 6th to 12th gen (fixed in 13th?), disguised
> > as a feature. They discovered that "data values may delay instruction
> > retirement by, at most, one cycle" for vector multiplication and bit
> > count.
> 
> On Wed, Jan 25, 2023 at 11:34:43AM -0800, Eric Biggers wrote:
> > I'd like to draw people's attention to the fact that on recent Intel and Arm
> > CPUs, by default the execution time of instructions may depend on the data
> > values operated on.  This even includes instructions like additions, XORs, and
> > AES instructions, that are traditionally assumed to be constant-time with
> > respect to the data values operated on.
> 
> FWIW, I'm not aware of any indication that e.g. "additions, XORs, and
> AES instructions" have data-dependent timing on CPUs released so far.

Sure.  To be clear, I don't have specific knowledge of how particular
instructions behave on particular CPUs.  Research into the real-world behavior
is absolutely needed.  I'm just going off what the Intel documentation is saying
is possible / allowed now.  Additions, XORs, and AES-NI instructions all show in
the following list of instructions:
https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/resources/data-operand-independent-timing-instructions.html

Now, that list is titled "Data Operand Independent Timing Instructions".  That
sounds good; it means they have data operand independent timing, right?

Actually, not necessarily.  If you read the documentation fully, specifically
the "Data Operand Independent Timing Mode (DOITM)" section of
https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/best-practices/data-operand-independent-timing-isa-guidance.html,
it says that the instructions in that list are only guaranteed to have data
operand independent timing ***if the DOITM flag is enabled***.

Also, Intel writes:

	"For Intel® Core™ family processors based on microarchitectures before
	Ice Lake and Intel Atom® family processors based on microarchitectures
	before Gracemont that do not enumerate IA32_UARCH_MISC_CTL, developers
	may assume that the instructions listed here operate as if DOITM is
	enabled."

So, Intel is saying that on older CPUs, the instructions in that list are
guaranteed to always have data operand independent timing.  But on newer CPUs it
is ***explicitly not guaranteed by default***.

I'd be happy if people looked into this and found that in the real world, data
operand independent timing by default is actually still the status quo.

Of course, that would mean that while enabling DOITM would not currently be
important, the overhead of enabling it would also be very small.

Conversely, if DOITM gets more expensive in the future, surely that could only
be the result of it becoming much more important to enable anyway...

- Eric
