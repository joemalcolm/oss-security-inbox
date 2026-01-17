Received: (qmail 17516 invoked by uid 550); 18 Jan 2026 00:41:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15997 invoked from network); 17 Jan 2026 23:02:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768690964; x=1769295764; darn=lists.openwall.com;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/nxj0dm2oeBv11RNQ1yID5sNjzsuMWb1PceXfDoGk8=;
        b=giJx79itmwtdzTeRNi56D2BfOQ+jIniHC6+5yEZdksQy5dYNx2sqyqjPoGoBFiR8OE
         9R4obbOWe3od7l2F5XhVUECo0quK5iinGG5TyxAEv3/QhiuMN7nAiY9g5ocqa4mBFAPp
         3o9W+Gwq7eUI/vzkKidB46I8B8mxdTllWhnFjv2gN8gyhG3tyzXcw7pvABnbI2+RWqUE
         J4Bq12Qn2RMMArOVBLAxm1j96oRh6HOvo+GB4wV6cREdZ8EXzmhc6WHka4BCdbaDgZBB
         p4S3062ttWFihZREohaYN1KH+fLpKG2ssAnhrmjNtZZif85om9A1JgYq1yxkQh/SMJu/
         sYZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768690964; x=1769295764;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:to:from:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c/nxj0dm2oeBv11RNQ1yID5sNjzsuMWb1PceXfDoGk8=;
        b=mP3zLps53vPGqcvqpnEGiNci7AcGFQe3nalo8m/9dBY70sS5XyIZ4JoIhNKAPzaRwW
         /VX6pCc57K6YW8Bu3di34aZpjbv8PjdhnpHnkNtWcrcBEp53oyxPoTtOzH3FsBAChC0w
         WDkESs6FmuGGK4c47dobjAU6okN9CN5+LP16PvbIhhjj1ommJJS8qVwmRLzBzYnqaj/r
         I6zQUtCfxLKMIsh6uK1XI0Kwq6hPfHoQvWPMmOH1m1+aqxN+UAtLTXYae6ZYYI5Hl5U3
         acZdQutguolCLdRx4kQSQpSThDemYapgTEqHznm4Wwc1Re4k3+0f9WObJJon4NQbPmoQ
         nxiQ==
X-Gm-Message-State: AOJu0YwovCsvQNetSqInDP1cdfSfAUJ9WYLOCeyR1hCSHH45G893fwZJ
	Mz/fbvAjKv1u9OdhBOLtvRxiedGng+15CBZxP0CJ7FhliTY9bsRjpM+sZCCsuA==
X-Gm-Gg: AY/fxX5y/U1tqH46sA8A+RZwZyLkSMZLm0bysiV9JcnIIo9r+KZZSW95gRNsUpnZr1j
	7GhLfg/YyDGaBfoU44Td2jN3TTqdwPz1m3bMh1MyJUSgAF9yEy/9F4waJgvzdMdbGJStZY+aOj7
	4Gm0GLCCUdigf6X25HPsIHCGZhj5NhvLqaQXQy6Ys2UYMvmYE4dj2hziikETnfF00GzuB5LR5ET
	aUMr1DJ4Ad2soFac20pvFaRmSFsExE3fuGJQV0Sv0e9KKivUVkfx4BYBxyzujdAIt7bo1tokE55
	FMQ0Uu75snNlLMeUPDeGYW4qNx/P/XwzNdo5CDe5zoNJcIB4HW7YmW1Hn7ZC1x52IVrS7OmB0TN
	AUamEXPWDHVnmXR/WH7S0gXZeAoH6nIGfuYgFB0AD9KVkus15wc/KCLACar6fBiTiDlZF
X-Received: by 2002:a05:7301:4194:b0:2a9:97bd:a844 with SMTP id 5a478bee46e88-2b6b4e8cb91mr6023387eec.21.1768690963626;
        Sat, 17 Jan 2026 15:02:43 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <61dcfcad-c04d-4cef-9d2b-105e97048043@icloud.com>
References: <7ae55330-061d-41d6-a2c0-e83b2ba16235@oracle.com>
	<61dcfcad-c04d-4cef-9d2b-105e97048043@icloud.com>
Date: Sat, 17 Jan 2026 15:02:42 -0800
Message-ID: <874iojkfl9.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2025-8110 in Gogs self-hosted git service

Hi Chad,

Chad Dougherty <crd477@icloud.com> writes:

> On 12/10/25 11:18 PM, Alan Coopersmith wrote:
>> https://github.com/gogs/gogs offers a MIT-licensed self-hosted git servi=
ce.
>> https://www.wiz.io/blog/wiz-research-gogs-cve-2025-8110-rce-exploit
>> warns of
>> CVE-2025-8110, an as-yet-unfixed vulnerability in this service which
>> they say
>> they are seeing being actively exploited.
>>=20
>
> FYI, this was reportedly fixed in https://github.com/gogs/gogs/pull/8082

Thanks for the link.

But I'm not very confident this actually fixes the issue. Copying some
select lines of code from that patch:

>  	localPath :=3D r.LocalCopyPath()
>       [...]
> +	// =F0=9F=9A=A8 SECURITY: Prevent touching files in surprising places, =
reject operations
> +	// involves symlinks.
> +	if hasSymlinkInPath(localPath, opts.OldTreeName) || hasSymlinkInPath(lo=
calPath, opts.NewTreeName) {
> +		return errors.New("cannot update file with symbolic link in path")
> +	}
> +
> +	repoPath :=3D r.RepoPath()
>
> +	newFilePath :=3D path.Join(localPath, opts.NewTreeName)
>       [...]
> +	if err :=3D os.MkdirAll(path.Dir(newFilePath), os.ModePerm); err !=3D n=
il {
> +		return errors.Wrapf(err, "create parent directories of %q", newFilePat=
h)
> + 	}

Where hasSymlinkInPath() is defined here:

> +// hasSymlinkInPath returns true if there is any symlink in path hierarc=
hy using
> +// the given base and relative path.
> +func hasSymlinkInPath(base, relPath string) bool {
> +	parts :=3D strings.Split(filepath.ToSlash(relPath), "/")
> +	for i :=3D range parts {
> +		filePath :=3D path.Join(append([]string{base}, parts[:i+1]...)...)
> +		if osutil.IsSymlink(filePath) {
> +			return true
> +		}
> +	}
> +	return false
> +}

This just introduces TOCTOU races, no?

If someone can delete a portion of "opts.NewTreeName" and recreate an
element as a symbolic link before "os.MkdirAll" is executed, they would
be able to achieve the same thing as before the patch.

Surely Go has a way to use O_NOFOLLOW, right? That would be the correct
way to do it.

Collin
