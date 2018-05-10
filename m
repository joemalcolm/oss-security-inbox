X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1283" "Thursday" "10" "May" "2018" "23:56:15" "+0800" "Qinghao Tang" "luodalongde@gmail.com" "<CAPcZBq6kE2r-_-XKy22dNsbcKjjds=d2b=kBpMprN84oV63r_Q@mail.gmail.com>" "49" "[oss-security] erc20 contract KoreaShow bug" nil nil nil "5" "2018051015:56:15" "[oss-security] erc20 contract KoreaShow bug" (number mark "U       luodalongde@ May 10   49/1283  " thread-indent "\"[oss-security] erc20 contract KoreaShow bug\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18264 invoked by uid 550); 10 May 2018 16:02:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10084 invoked from network); 10 May 2018 15:56:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=4Ah3+HzYrAkhjD3S5SiYh75cLfQbzoksP4S60WarVvc=;
        b=BwKMXEylTqOiYTo04SpHApYKV+0GitVeOraQMola4En1Su5p4btPml86sjQRgXqIbC
         RHvtfK5t/jyeDT/q9/iuE0StxNG6EtUlsF2CPGYSt3BuWbUgKqkrM9CSz3NOKGjJI8m7
         IhH7QovuVXw2be0dpC2OwzB3i6lQjQJdaJvmxG1vDCxbAyJsZ8iRhgfHuqwpnytxiH+k
         gGawcBI4+F4F80HqUrnaldkUILGFBp0bpB20gCpX4+vAXYmZDpN32ddluagFWCNQNmnv
         TS33xbGht0XHdjnoxuDA1nF5/N1+fpf2sZJ0YDolyk1MQ+U6NuxKm5v0SPAB4OK0AOXq
         RC7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4Ah3+HzYrAkhjD3S5SiYh75cLfQbzoksP4S60WarVvc=;
        b=HCku7xcqe3Gm6F56PXuUBZ7dxP7sVwG0DzDwxA7tQCFbbLPa09fldO6u3VesCjRdvi
         Aw6xJHJBcRmNQ+FdQF7bPzAi8MOsZBZ5arRJqPXrBfpPvCV1hGpGGRmbD1k2nukxtwsV
         LqPviO9KEaXoa2UfAHqDVewa5sDKM7976vWXtZpcg0++qGuAA7IoHG7gp9pKDyN3ThE+
         4asJ26SHJbBLOtMXb2Xh3oJonSYOuGzPMzxOkldnnzv69khPg4Z1YjGLNtq6jCh9AYDB
         Rwoz6J3/+eWZkHssOmJ/I7g2BdCGUa7HuOdbFkBXC0C5wV5cvTlp6J1zBSSh3jcQIUj0
         P/0A==
X-Gm-Message-State: ALKqPwe84hOrNqFf+gQD2KBE8g4GnGs5a/9Ed8lgQiJkZFil7RJvZewj
	vTm99roSm6UYHh3Mb+fVGv3ZTdhndKSNx1uXtLVCZTLO
X-Google-Smtp-Source: AB8JxZqfUO/RDyfIsgSr5fXuvhq/iN5uautiOxMr4kQgznnXcaMTNX911C0CZqD2L4bXJHeDuMhvvQ05ywN9An+ehao=
X-Received: by 2002:a2e:998c:: with SMTP id w12-v6mr1617491lji.64.1525967776105;
 Thu, 10 May 2018 08:56:16 -0700 (PDT)
MIME-Version: 1.0
From: Qinghao Tang <luodalongde@gmail.com>
Date: Thu, 10 May 2018 23:56:15 +0800
Message-ID: <CAPcZBq6kE2r-_-XKy22dNsbcKjjds=d2b=kBpMprN84oV63r_Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003bc94b056bdc0ff8"
Subject: [oss-security] erc20 contract KoreaShow bug

--0000000000003bc94b056bdc0ff8
Content-Type: text/plain; charset="UTF-8"

An integer overflow in the transferMulti function of a smart contract
implementation for KoreaShow, an Ethereum ERC20 token, allows attackers to
accomplish an unauthorized increase of digital assets via crafted _value
parameters.

------------------------------------------------------------
Let`s see where this issue is:

function transferMulti(address[] _to, uint256[] _value) public returns
(uint256 amount){

        require(_to.length == _value.length);

        uint8 len = uint8(_to.length);

        for(uint8 j; j<len; j++){

            amount += _value[j]; <------here, crafted _value can make
amount overflow

        }

        require(balanceOf[msg.sender] >= amount);

        for(uint8 i; i<len; i++){

            address _toI = _to[i];

            uint256 _valueI = _value[i];

            balanceOf[_toI] += _valueI;

            balanceOf[msg.sender] -= _valueI;

            Transfer(msg.sender, _toI, _valueI);

        }

    }

---------------------------------------------------------------
If you can  reproduce the issues , please give it a cve id ,and disclosure
this vulneralbility officially claiming that " Qinghao Tang " is the
discoverer .

--0000000000003bc94b056bdc0ff8--
