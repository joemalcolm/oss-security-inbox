X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4671" "Monday" "4" "January" "2021" "11:27:50" "+0000" "Ferruh Yigit" "ferruh.yigit@intel.com" "<69a35308-0697-780d-8e72-422c7a2173d8@intel.com>" "129" "[oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple vhost crypto issues" nil nil nil "1" "2021010411:27:50" "[oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple vhost crypto issues" (number mark "U       ferruh.yigit Jan  4  129/4671  " thread-indent "\"[oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple vhost crypto issues\"\n") "<CAA8xKjULPZw04YY9fd1d83893mmqXX_qp1UjRZdAWP7fU3yC_A@mail.gmail.com>" ("<73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>" "<CAA8xKjULPZw04YY9fd1d83893mmqXX_qp1UjRZdAWP7fU3yC_A@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple vhost crypto issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1235 invoked by uid 550); 4 Jan 2021 12:22:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30107 invoked from network); 4 Jan 2021 11:28:09 -0000
IronPort-SDR: LbFZJsjnBXk8p306yyiyU1c5zJUBSi6KAMZhIvsqMUaWURjPS5FnycMz+IcOZcgwo83pt6GC6x
 xdZftL51GMWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9853"; a="174364370"
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; 
   d="scan'208";a="174364370"
IronPort-SDR: PIXFe52iCDDwtP1chaBaHfNuIer/kHTQQBpKv+915PGmkDd/cp96CC+w76UYfv/+s40ORkPM9W
 UBIKX2pxpTxg==
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; 
   d="scan'208";a="378382351"
To: Mauro Matteo Cascella <mcascell@redhat.com>,
 oss-security@lists.openwall.com
Cc: security@dpdk.org, security-prerelease@dpdk.org,
 "dev@dpdk.org" <dev@dpdk.org>, Ryan Hall <ryan.e.hall@intel.com>
References: <73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>
 <CAA8xKjULPZw04YY9fd1d83893mmqXX_qp1UjRZdAWP7fU3yC_A@mail.gmail.com>
From: Ferruh Yigit <ferruh.yigit@intel.com>
Message-ID: <69a35308-0697-780d-8e72-422c7a2173d8@intel.com>
Date: Mon, 4 Jan 2021 11:27:50 +0000
MIME-Version: 1.0
In-Reply-To: <CAA8xKjULPZw04YY9fd1d83893mmqXX_qp1UjRZdAWP7fU3yC_A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple
 vhost crypto issues

On 1/4/2021 8:28 AM, Mauro Matteo Cascella wrote:
> Hello,
> 
> Is there any particular reason for the Scope metric to be Unchanged
> (S:U) for CVE-2020-14377 and CVE-2020-14378?
> 

removed dpdk-announce mail list

Hi Mauro,

CVE-2020-14377, the memory over read is in the scope of the same application, 
that is the reason of the unchanged scope. There is another CVE below that can 
use this information to figure out where to overwrite for remote execution which 
has scope set as 'Changed'.

CVE-2020-14378, can cause loop taken longer time and delays the service, since 
it is eating the core cycles, if there is something else using that specific 
core technically it may delay it too, but DPDK mostly uses all core for itself 
and since mainly the vhost crypto service is affected, scope selected as Unchanged.

Is there a concern on the selected scope metric?

Thanks.

> Thank you,
> 
> On Mon, Sep 28, 2020 at 5:43 PM Ferruh Yigit <ferruh.yigit@intel.com> wrote:
>>
>> A set of vulnerabilities are fixed in DPDK:
>> - CVE-2020-14374
>> - CVE-2020-14375
>> - CVE-2020-14376
>> - CVE-2020-14377
>> - CVE-2020-14378
>>
>> Some downstream stakeholders were warned in advance in order to coordinate the
>> release of fixes and reduce the vulnerability window.
>>
>> Problem:
>> A malicious guest can harm the host using vhost crypto, this includes
>> executing code in host (VM Escape), reading host application memory
>> space to guest and causing partially denial of service in the host.
>>
>> All users of the vhost library are strongly encouraged to upgrade as soon as
>> possible.
>>
>> Thanks to "Ryan Hall <ryan.e.hall@intel.com>" for reporting the issues.
>>
>>
>> Stable releases download links:
>>
>> DPDK 18.11.10 (LTS)
>> http://fast.dpdk.org/rel/dpdk-18.11.10.tar.xz
>>
>> DPDK 19.11.5 (LTS)
>> https://fast.dpdk.org/rel/dpdk-19.11.5.tar.xz
>>
>>
>> Details:
>>
>> CVE: CVE-2020-14374
>> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
>> Severity: 8.8 (High)
>> CVSS scores: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H
>> Summary : Remote Code Execution in vhost_crypto (VM Escape)
>> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>>
>> CVE: CVE-2020-14375
>> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
>> Severity: 7.8 (High)
>> CVSS scores: CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H
>> Summary : Time-of-check time-of-use vulnerabilities throughout vhost_crypto.c
>> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>>
>> CVE: CVE-2020-14376
>> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
>> Severity: 7.8 (High)
>> CVSS scores: CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H
>> Summary : Buffer overflow copying iv_data from guest to
>>             host(prepare_sym_cipher_op & prepare_sym_chain_op)
>> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>>
>> CVE: CVE-2020-14377
>> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
>> Severity: 7.1 (High)
>> CVSS scores: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:H
>> Summary: write_back_data buffer over read (cipher->para.dst_data_len &
>>            desc->len)
>> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>>
>> CVE: CVE-2020-14378
>> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
>> Severity: 3.3 (Low)
>> CVSS scores: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L
>> Summary : Partial Denial of Service due to Integer Underflow
>> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>>
>>
>> Commits:
>> main repo (will be 20.11.0)
>> https://git.dpdk.org/dpdk/commit/?id=57680e34498
>> https://git.dpdk.org/dpdk/commit/?id=5677e68c05d
>> https://git.dpdk.org/dpdk/commit/?id=b2866f47336
>> https://git.dpdk.org/dpdk/commit/?id=409c47c7c5b
>> https://git.dpdk.org/dpdk/commit/?id=e15b7c01120
>> https://git.dpdk.org/dpdk/commit/?id=2d962bb7365
>>
>> DPDK 18.11.10 (LTS)
>> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=ab6314978567
>> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=7a5af91f8bf4
>> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=7e7c75edc635
>> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=ff65dc28bc71
>> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=75f8df70a2c8
>> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=6e8a4da39e68
>>
>> DPDK 19.11.5 (LTS)
>> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=3f2635c5a9c3
>> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=81e969483020
>> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=e4a7c14f0248
>> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=319b498e4b16
>> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=6a3a414698e4
>> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=e2666ec24535
>>
>> --
>> DPDK Security Team
>> http://core.dpdk.org/security/
>>

