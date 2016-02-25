 class users::keydb {
 ### Infrastructure ###
  @users::virtualkey { 'flauret':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAgB0GWunB9e+IuX7iCIVieqHaYEi76atE9d3eDM0EDiNndYysm5COiYFOWdYC5wKMcCfXuIsAlNKmJlbOgYRRsXzU47pWM+xmkVxp09RN0beeJPH+PSGYYPMObErq3QZCc9Fs3BxlGz3p17XepDQxyx+5rfmsU65nkGlpfe2zMJy2XgdJQAlvYI1d07sU0AHc1KMKMBvO/xuonbO6bpeEf5AOfjaO0NfSiEUSfVE9OJ4yB8kciZ64eulTQOnq3sYF8aK5VWPCcb0s7YCj8KSN9xsoL2MIdO+E7c1P7+Eu7kSw1PyCLnkBIN09dCmxx7IjIki4tS1jEI5jhUr3LcFjQL5gFtu2nmwLG/iKdVxpqPYaMjXlUFmFhVHHfkl+sWb1AcejX+X1ee0yw0cP4gFjRgwAhYgIkTWoqjxhFfC0wszjvVvWKr8MmumyrKNlhxG/plFF+9P/P9FQDog/Yyo7DR5v73yqXDEnGOZ/RKkeELWX//B1gnr2yzRENMjiFs9y668h2dVO35Am3cQhvMjPPawiXnNWYJzrzSSwgmc4CPaCadj+5sEF+qexgiMDBJB2c9ZQvdfuL2/NVxU7/MSyaswVsv5FxCiQeSHbPhRcD2G7jJ5fLyyhx5MCWA4PZorPKJTKcDQOUYyXc1xsQufNF6eUjuhJL04fZBPEAgz720sPQ==',
    }
   @users::virtualkey { 'irenaz':
    key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAA08iZONeJoJKndWlNTW8iXle0I5lU/VayUuVoJzIB2538DnpaAuRrFaOY47vgyOuo0R2WqhhScYjoG+SppPaeRxlqL3LSuxXAhY1pIfNzVnimCTxqMuTuMMOlKzYXRnuFaUPzblGm1vB717irDNa70v44Fa4W1QkEcjxfyrqwxR0S7zJ31n3eNvgDQVNFgsycwecSKZFEWHj+X4pVNXnP5VhADtBfc7lRFOxO0wkDxXUYtBCu0TA8L2/OCtFsBrv9bS80KqQ5z3hyAdpQk4dBpdcr4xgv9XifkR4KxDHyK6bEN2oEfVzzczGM2zXAyYxX+nJSDdGytEVnBT5wmq5+mA3u80V0yt/NaRPjsgq7C3MRXIqQ0t0hM+iSHmgnEk+gy3o93EPI8+Kn1EZv3r08DDeHZYv/ZmLX/fG0L2AQBsNyIW7ECbYHP1Y1DoiLnY/pNJgDTlXhbODfh3F4GS72UaphBo/elO7KaH7aENxRhIN0DiB2et9b6vWalX5Zi7clqx4vDeskeW7rftA/Bz7rsnZAuAsmDQYsDjqHn+O5cxA2Zg6UMb0C++LeJU9Q25Rwn4/RWpE1bOhoh9Nt57ufcI1U/UltJGxhtVqOXs/rivu0YeFXlQaMlN0ZWfDB4fh/3pYJ2cAnGFeNKAVJEsBc0oH1zG1o0CtcVetv7fWl+P',
    }
    @users::virtualkey { 'daniely':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAoqWm9iv+mpl9Jwl2+WQWIvmuyF9xymAnH6ii7+YwjvSzHcqHMABztJsia9iUmTsukzNmSDR7Vg9qWScj90inEEK2sjdlgsmRsn8tq52QiatTopYumxwD1FsQEdoBDfzc9s1/Z6rtYX/LW64Q5CBsUPShL6NFYR5GBpuknQHQIr8=',
    }
    @users::virtualkey { 'radostinad':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAsuLI7k+85lHmaOgdBduq8Zx/2Ca6TDrQfqYwzMfzDQCfOstieSSGEXBJhtZ2mxeDRLOLZgcUYRkKHvRSIZ75TzVwsQnYZuAkHwf4py72pw7nEzY5zwhMwzQzSOuKeno9ZKNefAo8XCfeuC7nNqnegNbwx2tH4PebLTS+SGNqk3foJp3QF0f1Mscmn47VMtK6G4HqREwlev06DjBjqsrxXmD/CDwd9cVNMDHMbhqk4SYW1Dp4UxucVd5tvhQb/RMImXk8R6cD6XY3c5y0dToYIj96QENyuCy/Sekz8+H5LUkaG9EmHEdcDyhnRBm0Wb2INAItYUgvTrGMuxe93DEv1Q==',
    }
    @users::virtualkey { 'nikolai':
    key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDsWv4qwufGZOE1kKog0m0v3zpsjSpqru2+vAg7fT9W7BZ/Lx+WrQars+wv4i3sh+AcBtfj4/CzgCpcBADYMfB7p4wlaW8F/uQHuVT7vzAtpJQLbci3y/4ig4KypKPSYcqsh1k78AqwFEFGSXjFHNfiLYeEwOEUBt3Ker2DTpFZN7ypJnbWpv5zNFjSgdKAmhNgMXubmTiPzj/UDE5cu4j4oLSIVjiBxM37BfvFDco6ReagAm+HdpSbD7do8IVvALKGeWfw55+DebicTv0ixHK6oktS7iZ1Mw3yXIeZ9rYLnH4qfKaYgNVdmrvmXj1vPj9h90fa+LTVJciMqgizx0zvShRhva2lxmVS1HZmUP0Eax5jg+xxtY7R0O5XAAEdAkMygzpxVtFkrrW6QG3DFUtMBRTpWye7+YiG1oPDY4Pm+ZhLF5iBNfSaDogwL4OHTqxM7qCpJzVtjtBBCqY2tYmElTTHt82whePBXmDSr8ru9Glyple/zTOpxMR5Lhf8OomQQxdPP1A08bUL0HVSCuInOW852YQFaC9lh3dPrEYif1WAaQ+mtlCR9GBYHgW/rAhEytWgAJflH9a2f+PYmJlJgR0HOIm5ABBj0bwIFRj/TsH/L81WcBBicc/AW7PZXdDUIDnbxuMTYkib7lj5IUu5JF+LgLMAuQTDbNbQfToivw==',
    }
    @users::virtualkey { 'davidm':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAjk+pK/+QHdNnWG/e1KCYaK0EyOuYsl1W+RPGicIGwx7OB0C/mnbuMB8+Zqs0o1KnM5l+8OsM8CVHRHxtyKfzatsQ/L1akh8cWoYJdyek03WgApbVq+Fct28GW6+/gmG5vpPNSkjbIuqbNKIMrILUQzVcF4HXotPROMXEDjGWPwJCw2Dl6flvq2xuipL91YdrXFnnlL4IgefhIUBvQo/O1hsARwrn3WS76PcvXaMCqmpU5I/SHnTTev6Fmk6nH8f5E/xeKbp4s9gGhmipdtdDgWlCK0HQR0nEFdx/cVxOqlj4IESae14T7YAFZaazJBfk6jvK/yXFU8lx6xwo32pSYw==',
    }

 ### Intershop Software ###

    @users::virtualkey { 'services_manager_web':
    key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA471OvvdsF6wNWnWzeOmivKHD7b2y4ugLUoVNvKGgPQcuN6GhQZZv3I/cFhi8qZ1qUcFMBxXZsrhgqG44//ZlXRRlpF5Bgm5GYlRrrHofOJ328MGRY/GAM1/ty9zlyesIyp635oybSez/v+1jfRs5gtf7lBPiJSvUk6oPNPUi0ocHOWQt8pLk9L6t6m+CS6tuUlok/ENhHCgJIMlNK4HwAtLrdWQUbs9bTySC3p2s7mbRbQDpzGUIhRCcZhEUJzaFO9wu0zXMWslBUzEfSLcmW8G5IKy37hp8FgLqlWFbkT9Ybt9ZYBQzo8Twj7R231IZhX3iTLn6N3BQd8+cbRHrtQ==',
    }
    @users::virtualkey { 'services_manager_app':
    key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAqzr2ppunq3wFEseP5Oph6uU1SBfTe237vUv9OVg2FkItp4tkd/d+KI8zGFa8QauybCPXoY4uhBkX5XjE2B51R2yvsWdSMecwxffYvsI90/T0en2SKsNTIy16lsNfc3/dkGobIr4vqxyawIrGS/9ob/wudj57kdb8LVVvbHI2G9hhhDwZr5NPIa74xyMtcVB8VDAic2Lv/e/vR87YC4/jh7WQ6yg/OmtLXD+/LXw5fgYQaeGfDBPTqrrORJYusCZfcwM2YMk0gZ9BO0tp5+Gu6OjDMyDRz7C4sL/723DfFrg+/PiZXX+ROM64bDQUsUsXj3bwszOi4iZoVuYC4okO7Q==',
    }
    @users::virtualkey { 'awfetch':
    key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAnmD9ZlWKWa2/q2u/5HcqdPRnG/cRenBG/6SU99Wq2+YKCXW2uLRE5FxBJQbtHfRyBHYLULgiN/W25fl5/vV1OcV0mjplaIoe7E9B15FNirr/BzSbEYbIOj/Go0OVI7pqp0dHgrEENLGEhF7XXzLBLWH2HMKGZM2TmmS0dRpvq72rhg0GvtxgVYxZOG8HpRJs4Esc1x/h4PMgNk7YFpRyZIQipU3FCLI3INdTWGtdb1yhFCNZzzIwWVWMqAVEiDuAuXA4mCpAJ5KutbYoKE4+mQKTN4AfyHCDTUEaO5Mtaq9CTxyKqwca5D5WaEroTzC4UDg8kBpKYK3lPr9wdlCVpQ==',
    }

 ### Hybris Software ###
    @users::virtualkey { 'hybris41':
    key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA3NqBHKEps/uMGydcBQ+YiBaXpJWhKtAJQXjVCZrnISuggHJNjgt7oJAah9h+C7VqB21AIC+JWDbQIYECpdW+1dWus6dNqMvy9kW4o16ZTtNHXX+7h2wssWYc5N47ZFmY6gpJqJycTta9VeKiOR4ns0jTyy1VKT7+GRnreWqnigqMpgWi4LZu8p0VoHAEOGc3rPZH/xYlA8NEmyqJ+zPP/bXnSl30ips/LtDqzLaKiG9ZZeE8nOJE+BQMr8nZdIjlDSh3FThHxeqBBkYc/yK2NAGlJVBncLZBGcGYojxbiivK4WPk6XmdywzZvQZ2ZeMPqTmvHPj3gI1auDPwIZ2wEQ==',
     }
#    @users::virtualkey { 'hybris41':
#     key => 'AAAAB3NzaC1yc2EAAAABJQAAAIBIWvzwFWfCTjYYryQgE3lRN8hIAMi3nO0P8BZohuzsqEl+wLojvstVk7us4VSFdrIgY/GtdIVybds3rM63eyKLbKC9wSWAm2n3DUM8eqhfGWMDAz7qXZFYsytOVQ7kDbE3c0ZZt2Gx/0C9FzLSkq/+kOj4m2jj3AZOkXNnjJKELw==',
#    }
#    @users::virtualkey {'hybris41':
#    key => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAh+Y6MHN8UBReb89VeB8d7f3e7ujGLgfn7ozjulisrZapZaT84bcnXbCeZIFtnBOfOimyinS3a1hmDE5BjL+LShBeBJtQ043mMur1J2EujmPgA/BwPEMn6B4xAgSepcw7A8gWXHN3xjudpUkMghJfY5U0JfSmQhXVW7Uh7VyrYbU=',
#    }
#    @users::virtualkey { 'hybris41':
#    key => 'AAAAB3NzaC1yc2EAAAABIwAAAgEA6gzS0iN/clkOcGEiDxedvhxHP3pup1DiWu0p05XVlsYCkkUHvfcq5fQZj/PiAY8IEqXJ33q9WKaF+XCsVLtYUo0wPqQTPvmXTiS8hcZMrw1vpgYOIp8awZyMEGfunNiDq82eirermRirSLrtJmoDZ1EIB7vn0kIHEV6YL0nbiFMc/5I8O7RMZdTSJ1AYltxSLdVG9gthCauz8fz2D6AEYo33SiujD2uaPTAE9EKeCxXQ2PgYlRqlMi/K9H8oWKorkFnepz1DDwYgAKb6thsOs69P2rEVzq6uXGJd7QLOcILdfPca01nqgWXVJLmuCo3GJ3NU8zmS9HpltdqNO5LmxRM/qCaF1Rg37xxElvWx8jAeHG1iU5CLX0dNQXwOmcKTX30QoSt4SBAFaJBvQ0jdni+c4QGp5LTbhw/2VC49rhl8KGWd/ilG4PoJgDVLK/hNBK5IrTK3sI6ibwfy97Kf0umrqjLuSe/TViCo0r/Sipj9oQnc0+2K57QJr5/oEfLgj2ShbRiPzpwLWrfyeqagHtI8y8ojvt3TUWsXutzFeSI95+SykChG3s6FRLOG4bluA4uOpH/uwkuVI+vf5ZAPUiaLWOBrY6PueFgfddWYI63RcFeIuum7JxrMkjg5AyomCjt3ZKSoKwPxA04v/pGsNPtC5L/750W/PvSNCK7PQOc=',
#   }
    @users::virtualkey { 'hybris':
    key   => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAhFlXUN72m5R/oCvXeY7thmJbJ9xBG9P1gMpRm4zCfUil4sA0lQi2WMcTQ0keG2YwixLSzRHjEk6abyiGODGR+/Ua+TOtI63/93dieYI6jaXw73Vkg9hpFy1iBkB/UFeVvPEYdBpi2v2gxPMYG/u+PGQW4C7WbOosVXGTp3nz3pyRu74Y80oDRd8KfG96FkaI4q4g+CMkAlZBQ0ly9s+UO1trHUxEnTixOWKoCqzhl7kUpMPdVNNpg1O61wicFIQ/G7OyQ19wpFLqMMv5L4YRFQ94bkLlNgycwAn9rYR8FNrB9+FTOra53zMim4hO1zWoUwSZHQrBUvtQLLGjv27lIQ==',
    username => 'hybris'
    }
    @users::virtualkey { 'hybris1':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAjoHJKl7zHt9jd1nBuVLG4Jxe6102Um9moEfTeHf1ZNmVGIlEIGI6VpyZ6HtzQEbh4P0rSZb+kye11W7SlX9q7awReGFNHhHm7g8IWuMxWEG+8Udq2/NsaUDFtXrWUy9pujynym2eFTLw6hEnSgqpVwR8/TyShHx264vlvBt8Brk=',
    username => 'hybris'
    }
    @users::virtualkey {'hybris2':
    key => 'AAAAB3NzaC1yc2EAAAABJQAAAIBIWvzwFWfCTjYYryQgE3lRN8hIAMi3nO0P8BZohuzsqEl+wLojvstVk7us4VSFdrIgY/GtdIVybds3rM63eyKLbKC9wSWAm2n3DUM8eqhfGWMDAz7qXZFYsytOVQ7kDbE3c0ZZt2Gx/0C9FzLSkq/+kOj4m2jj3AZOkXNnjJKELw==',
    username => 'hybris'
    }
    @users::virtualkey {'hybris3':
    key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA9AFKtB3FlCwSOUbuduO89ZYBNnZe11eIyaSt6Fo/KcSguudLWvy/bBSroAw10XJSn/SU4LIS5QcTgjurO2JEnhZlSZobTR7ywhfyuXniO+rAC1ypWaTOKaTOmAn5ffyDlCm4yDCsUPaDZa44DlvjOD1vN/9Dvv9LHsKXzn+IJdtSi/BzHYJYiSOOpiw9+3u4sxAjVdZJc/kMHIaJS6O5tNL4Rixt9fR4km/YSfoRZL6rObuJa2xN/cpo+zi1apgAEY5PpMVJ2D7uc9IsJquTQqUjL0VgT3AAEkRgn2WbJdsQqSqn30FEjyJ/ULmEwxmc+GIeLqmUY0/5lRiKSOM7JQ==',
    username => 'hybris'
    }
    @users::virtualkey {'hybris4':
    key => 'AAAAB3NzaC1kc3MAAACBANClOY0LK39aT6BGHTA98yvDN/lbtz9lZwy2UCgR7CAGyCYVA86XPHB5Y7IHeGv8EEBwRua4oRZXrO8C/3kR3sIOoPabn4pHEGvOxrTRBxw3Y1VZiCNu8sQl7KSMJgucrlFrlAy4gCgozhXzBcYOHDQ57YhLpje+7/Ybx3L3w6B3AAAAFQDoV+934E+4G0zFEFiweA0CRtATcwAAAIAJL3BC/O4/+PEocI+WGDELYdUjios4gR0sEKWIaANeM1oVIzng4ws1eKxPe/1D2rEpGYRjl73YrjQZ3ipV1fIcS6S3t9GmqAkpcvjziDwQNLbECb+vX+fh66K/s5bNWjwDRzZ/gVXJWpQAM2+r6Fk8u9FayC2hEW78pedwCBZM7AAAAIBWpS3NzgVISRm9jUAt+MBKRYQmBRTF3Fcoik96rBwZ/lRz/kbccLBtv5BwQ/D2uy2rVLQnrOhledFMMBTzbeUjdeYSfJzPWh350RB0D7jxx3jdSGKMtE00EkCYA1nflEoTmOnVsiiQiHsZMob5JCPHOi9QOEpcBcPNuHqkI701uw==',
    type => 'ssh-dss',
    username => 'hybris'
    }
    @users::virtualkey { 'hybrissolr':
    key   => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDXderT1d5gSUxhN1z7rCj4ToZojniD/se6L2Kp/eEUBwEAjR+ASrVzctNkOShoHZoyK669t3rkdVkMi+9fzYfBGZhEs3V63ooFQ0s9L2fCOi2zDG23RdR9Q1L7VniEx3rfkeu0hlxKLAsD1m/oUCK2slG/95xl+4X3Pv4lS6nbbDF1808sLP3pBFbb+Y2ct+hQzX48p483H/p0+WUanCI2cpadl4YXdbLeqX5Uu0gYxj2MECXmaRowkhihyfALBYNH+tRmHd1IqTFrOm06GU5UDhldebJ8dNVyHegWpdBiPn81FCm3rY2NVguPyVKK9BXeH/1BkhBtcT0KQzgix3irBPnMl/aUwU0iDF8iaOYWEhmbPfnsXY+GWIe+MMNF/4iwaUF/WVSfocsQMFF5sFU+uJkmPaf/tAnhosklKf6PAEMci98zXA5vne8nCdJT2zSWk7e5OEexuF8DuxlHNC43rQkPdq6tDnZ0HLaYfKCtr2YSlzru+BbP2GeZoDu9U5xRvuKl51IW1iFxKilXQM/qrlb4KCAdVQYEu5R+JAoaBuD9LOvXUiaevR3KFOX3bDw5nsd6bawqOO1Qs6EGeRxtgvWK2CMeLswP0ioIGkOFD4iLSjeGgfyhzYTD2JcDcgMrZpyU5FptNV+9dfqIhgqGYhvM4GwkywFos/fbLjPSVw==',
    username => 'hybrissolr'
    }
    @users::virtualkey { 'hybrisuat1':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAjoHJKl7zHt9jd1nBuVLG4Jxe6102Um9moEfTeHf1ZNmVGIlEIGI6VpyZ6HtzQEbh4P0rSZb+kye11W7SlX9q7awReGFNHhHm7g8IWuMxWEG+8Udq2/NsaUDFtXrWUy9pujynym2eFTLw6hEnSgqpVwR8/TyShHx264vlvBt8Brk=',
    username => 'hybrisuat'
    }
    @users::virtualkey {'hybrisuat2':
    key => 'AAAAB3NzaC1yc2EAAAABJQAAAIBIWvzwFWfCTjYYryQgE3lRN8hIAMi3nO0P8BZohuzsqEl+wLojvstVk7us4VSFdrIgY/GtdIVybds3rM63eyKLbKC9wSWAm2n3DUM8eqhfGWMDAz7qXZFYsytOVQ7kDbE3c0ZZt2Gx/0C9FzLSkq/+kOj4m2jj3AZOkXNnjJKELw==',
    username => 'hybrisuat'
    }
    @users::virtualkey {'hybrisuat3':
    key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA9AFKtB3FlCwSOUbuduO89ZYBNnZe11eIyaSt6Fo/KcSguudLWvy/bBSroAw10XJSn/SU4LIS5QcTgjurO2JEnhZlSZobTR7ywhfyuXniO+rAC1ypWaTOKaTOmAn5ffyDlCm4yDCsUPaDZa44DlvjOD1vN/9Dvv9LHsKXzn+IJdtSi/BzHYJYiSOOpiw9+3u4sxAjVdZJc/kMHIaJS6O5tNL4Rixt9fR4km/YSfoRZL6rObuJa2xN/cpo+zi1apgAEY5PpMVJ2D7uc9IsJquTQqUjL0VgT3AAEkRgn2WbJdsQqSqn30FEjyJ/ULmEwxmc+GIeLqmUY0/5lRiKSOM7JQ==',
    username => 'hybrisuat'
    }
    @users::virtualkey {'hybrisuat4':
    key => 'AAAAB3NzaC1kc3MAAACBANClOY0LK39aT6BGHTA98yvDN/lbtz9lZwy2UCgR7CAGyCYVA86XPHB5Y7IHeGv8EEBwRua4oRZXrO8C/3kR3sIOoPabn4pHEGvOxrTRBxw3Y1VZiCNu8sQl7KSMJgucrlFrlAy4gCgozhXzBcYOHDQ57YhLpje+7/Ybx3L3w6B3AAAAFQDoV+934E+4G0zFEFiweA0CRtATcwAAAIAJL3BC/O4/+PEocI+WGDELYdUjios4gR0sEKWIaANeM1oVIzng4ws1eKxPe/1D2rEpGYRjl73YrjQZ3ipV1fIcS6S3t9GmqAkpcvjziDwQNLbECb+vX+fh66K/s5bNWjwDRzZ/gVXJWpQAM2+r6Fk8u9FayC2hEW78pedwCBZM7AAAAIBWpS3NzgVISRm9jUAt+MBKRYQmBRTF3Fcoik96rBwZ/lRz/kbccLBtv5BwQ/D2uy2rVLQnrOhledFMMBTzbeUjdeYSfJzPWh350RB0D7jxx3jdSGKMtE00EkCYA1nflEoTmOnVsiiQiHsZMob5JCPHOi9QOEpcBcPNuHqkI701uw==',
    type => 'ssh-dss',
    username => 'hybrisuat'
    }
    @users::virtualkey {'admin-monitoring':
    key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA9jxYX6weuM0ANqBs2f1IqbBpbx9z/EV9NL3KZPcQxqwhYWNv2t8cENgMcIcmI7usMY0Pmz2m/oWa3f6jx99Sj5BYAAIQsVctqsrqo89McXjtj9UqNll3bPfa/R/V1rcixWkdTvT8VzNv16zW6ZOt6WYOIBpoZK/viSJvPjjN4CsbXJ98LqCUM98Tkytv9oDQGG2ndMBHErLIj7rwbWwm/Fqnwkhbd3Td896Ibv+jKqz5LlColOxbLoWbhghSot/Hz5f3VKJUgaPpcfU0xaKg1aHdQfVueHl5WtLiw9/Ma9UWaTWZWP8VrfWShQoZsuiUcbWLOCSOb4jULUjyuH4TUw==',
    username => 'admin'
    }
    @users::virtualkey {'admin-bastion':
    key => 'AAAAB3NzaC1yc2EAAAABIwAAAgEA46XJjUjbyBlkttigB0LyTSPHbRDlvq4BK3N9qrJbdP3HTPkZx+78wZ1/Uz3ssRf1uKntkbyhiCmxHdcFhA59Wvw/PPn0xt3ApsAZs7OCws5QRE/WnOQKG1uobjgVlBIWmWxkosLQ6zdDJm9dtsdmgJC7vvkJh/M9SBdLaRgTciB6QSyK6t36Q0pT5bkKTTdERPeUKqrhF7QRFMULofGPRVG97cVuOYP/aTRw3nwZoCI576vRcAKrjWlmpZg+EAKoqVAP6EUaFOFgD3r0zOCZgssuUnOI+vaF+JUw/DbNIshfvIih9LWPpq5ojVuGNOGPK9491sema2ac3yk18SpqWB2bzAMliKRtQ+BD/iMElLrkNNEHi0KhdsPhwQGwoq9mQkh+Ruacnee2bDMpxF3ahWb4FTG9XtAN7gkMEYGuXVbIxZUyM8mWMkUViz4/JvImy8+1jw478jpqVtHaVcHGD2sCJv/WJtp2Z1R4LZR/iVhjSvbzz7CNWoo3pkxZKY1Cglka5rCzDoMgXlIdZdLeyjTvJkyEkk+Jm4Y4S3ypY7CkVCTIS4EtLtk8nvJWoLxKS48VKW3ZhKAfOPWscgVPS+KCHkSThEpIBRGvvXL6DcT4C4pHCbxdeqrspw1IP+rf50jVDojuq+MDIOUmOwF8+3f17mnRRRBOEz2bCcNjOsc=',
    username => 'admin'
    }
    @users::virtualkey {'jenkins':
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDSgkQq+12dNI5To4PVn1yJQlg+2pFxzhzBF4L/+CBF4Xdj9x+H95C23A6VHvZuhnXSoybl2U5CsD4jRjo/p4bMMgf/AE0a3EfI4Z/NGVD7e6fjFJmx+olHuczNIzSb5Co0IyQTcRzcBs8S1ynSvvQjpJrgDx4nwDT4bneymhGgPbz9EBOt8LC72UQ9qXvL/f3qP+oF4WQjZf89pLI5koLtpvbBfGP8teLsIQWi/NRTmTYkdcq42b76lhaWXalnvKKY+27ooUqxuYUNKdiW/bKVZxjQosWj0cVVmCS36L1UZSmIa+nEH3zjNsIqPi1Z3eB4jB7UCCbSEA6nTuQKXncJ jenkins@ip-10-28-0-87',
    username => 'jenkins'
    }
    
 ### DBK Support ###

     @users::virtualkey { 'stojanp':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAmOV1oXAbhbJV2EZMYKQNPwds4zvarsQFMSjWaEoye+n9rRIbBz8OLRJmrZzYKtq1YsZm0fHtjxg8yHIcu22w9MwGPGYDsmqFUIAJ2zALyWniSqK95vSLwCqemuwjUBtIOzLcNK6uGLnHBN+xqO4cJI+MqGHGZqptslMgUavVkK8=',
    }
    @users::virtualkey { 'desislavg':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAswv74nFIXYld1OBeL+O88f39WiLBDXnQ99KasIniq89kiNKaX3IQVh2W/lO1hzqvZseSFGEgu2hU8WTJnW6HvDUfO1aXrRJtiyuwFXDeIJqGbgaA5yMYtBtRSptSc/PWm2VpArERe66xqL+2yuT7X+mTjBbsC/13jJDVEpBltLHzb/cJti2jpQO6sPYmi4Y2PRBfIG1lp2Lp/nYKmEsuOoyzSV/YRS1wwOUVdWF6JgECLUIb7yGFqSJWhRJk8BASkw9IxcJT88T2MfYnsdNFUKACiSCgAVlOMTdrt/rHT23m7KM+1Wh42oxlFhzn6nl5BBFSvtJdqxMOlUNRez9RiQ==',
    }
    @users::virtualkey { 'tsvetomiri':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAosQrKAuIgOdCuVLUnbWsIdoqydtYcEK7hGUCIqf4YPvTcfokp9vtvkZaVUfDmfcql3pre+I8+aELyxJ97y8EJqhYTfZvyykAmP3J+ytVZN79wBNz0wquoUQBl4IZDxZf7hGPlmEd181EYqMv4FsRfbgsiQVLDs9zxGZIo2Fa2nItct9gIdOtZzsSSjbQAgaa7jyzY4OK5yQJBmwZLX+ZWQOmnONwF4JFKMSBQgVvrINjpdoVmf/YKryCVX3QojW7hQWLeKzPBrexrUCBd5PfAKunrx3tOnUINSmZjWCmu2rQbVr/RDLrWuFJ4M0I3BDkCM9j+yRWUZOH7w2plnrjIQ==',
    }
    @users::virtualkey { 'ivanu':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAgEAo811lxt10KYpJA867VQzrt1i8UcWi9Uujw6W7kHejk0bIT3jLR77Hh3DfxblfnCW5P3jeNWxEVPF3UzcdSveDth45B+J0Z1q6h7I6BLDz1o6AcjXrc20zkX8oUbA0r/CF32fzCh1wFMexyNEyiAF1QG0Vp5XXnIxvTzAGUNqB4wI4QyqMRlt+E9ZRD2lUcmvo9elMv6yiATIBk96ctcr/UcgTCXsEdRkHud8LBp6hnpPboAmnXFEi2inf1AQIhHeBkyd9TpyoMrA/YtAnMxpC02/NS6bE6Chd4RBgLKCRN8g+0elZIPcrnLkpWyrTlXmMNIHPhwaTvz+jbRAAbPt01LMz52z6JW6fVOw3WHRQp/OmTXZXFBA2ST6gcnh4kZjXtFLREVEwyGElnIQ9YtHBEmh8tAxMzPdJqpyhbp4kcYLo8neqtZ0gdOyxhk51tvOGkCoTtO3gOejAUu0kbd3FbcNP6ab7tvlBOg/fQC2EpJnlIy+7Otq67F75PpKOJkPcCrQswXXCA44adv9QqyvPZ2k+k31/03uGZ/QQyz3DvUWBOtLfxX2oMzs+fnYi4J/JgkDygQn0sqBG3M0i7OmyYvIoX+okv2us3lCwxMxp5ugrmT1Jkm9Sa682ycNHPk7/+uohSxq21/EJ1PiR6BNLU7Cecy81h/m55fp9KtR7Tk=',
    }

 ### LAK Support ###
    @users::virtualkey { 'kaloyanp':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAh+Y6MHN8UBReb89VeB8d7f3e7ujGLgfn7ozjulisrZapZaT84bcnXbCeZIFtnBOfOimyinS3a1hmDE5BjL+LShBeBJtQ043mMur1J2EujmPgA/BwPEMn6B4xAgSepcw7A8gWXHN3xjudpUkMghJfY5U0JfSmQhXVW7Uh7VyrYbU=',
    }
    @users::virtualkey { 'rostislavt':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEA1VmWgtQq/Hur4vtPH5bqV21Bs3H3OomRuj+XWU4gGdD5K9G6Bp/4ncCSBtUojvuv5u1XzETXzTgOxqykqOM4JgkRDf1/RycWC2o/BD/HyxicIvMcUihvCzumsc0gu0rM6wSFxt09ptK55bbcVWl2gz3ETc5an/blZAx+VBywuz0pbvujHSD123t5d+CmT8qHQCVHCYDGWbXSbkcGX8AI1H6whR/HjWJGEZWcvAOsetUaJIyDLpXfTq09yT7h2+pYn/87//Arl5MRMINLBbYdIE7bRX+BKPkrzwlx8LFAkfbpkQtXtEehE+BwNuUG+/h0xXMYwZxmMmAAgt/oiDrqLw==',
    }
    @users::virtualkey { 'nikolab':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAgEAnVRtN2LA68P3UBDeozQxJgGIAfHyDh+NMOMD29Vs1rhmgX2KTbUtrAnSH60gRXEOErsVs8Is7drXT9zv6mmFqJJbmlwxOgProikba5cUbiMejEJb/bcba1S4nrlvgQGVDObmvy95giztZ01fVICpGzVQnvszpq4Oc9BhgZM9A853jYbCwoj1FlIbZ3pWXDPWWFJt7GhiWHv9BNUQrm/pFFZB7heKNLxEFoksU5eX3cV9Gsm/FhXb+1Ne5idxt6vSi1xFdr8++s+jyLOi38F2EjQB6bodFEH1MOZxHx3A7XwZcJxpEHyEFU5+3ABCcxCQHRfuzyXnB72p6LIeC6Fmr3mi61G0w8qEqc/7yv59+KS+kZQFvMGT0Ew5cjLoArBvkL4fPSNJDmaj1MJYs0SU6owJG2A3a6YLaCPt8hMliRBNN4nGEq+NVcXacGPteL8IK5hFb4fmtmQyg20plPDPu3Ai1UxeixQot+n3rDWtXAx18s4cKJ5jKFp11DY435GU6y3oFOT3lMVszqobmmOzOE6JKcfb4QQF6VD7YZSnlae4iCPu7K0FdiArbJnQyIRNlzlNmdiCDL5ouwZ2tfPCrs8l8qWHTXPj463UpUd7IBxo9hZA9lPiSBWIuOX7+NLim+Cw7AwrifzncdWo4D+KDOJBaWr7+NjQ46A+g47XR6c=',
    }

 ### LAK Developers###

    @users::virtualkey { 'danield':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIB9hU9Uvaeq8lhD5soto3iKiAmbYTBrxoYiO4EivxFsYfnviHm+it46V6T3OtXQELqtchlR4YlQuk7dDFKnBPe8kElUtgU408iZT59UReYsepu75lL+0txdXKQ/CHueF1ZdP+yDFBQy07hWikfzSWl5mVFJCX5h5+mvFd9kDVREfw==',
    }

    ### DBK DEV ###
    @users::virtualkey { 'marianp':
    key   => 'AAAAB3NzaC1yc2EAAAABJQAAAQEA4rT7Z8iLDsoUPG7GZJGNGFa1NAs2+I2Q+tSeC2SYy3llodJ/jDu6HCKWvukzUnHIyPk2a01fSY0PJeaX3qio1vE9XfCPS9zxUCKL+5URA+5Y0d7ogBFOamsWPrdWLWE7t1cohD79tQ/076sjcoQlL6W4HEM1bZWq283ZTI5SXCcS7BMiTUKzP7XBXseaJtnbqNY1skoT0DSDf5hNVOndVJMDYmlz5onQkwq1HR3p7P3JU2hfwjveKeqMiMaeoP36os2wBYLLhNb2XN0rAQ6WWaq9WOm3ejx//rtgqo2QvtfwAIiV40U/WMmGNYNOi+UswcYEPokXUlw1x4b8qx5pOQ=='
    }
    @users::virtualkey { 'antont':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAgBSwSxTNiSE8yDwckqijnWxM05YAdB0gpx+EwZdJr42ck0JM4awxfQUICS6pcJc5/MglEyskuNX92vUhpDHd1SGhEytti9nrC+sftjAnYGkwFLQ17SHYnWkHTUCUjTZ8SNOO+z1aWCRX2Sk2gCkS30i1MPADoCKtjjP1FAU2g0WC8lzJ8l/llw+/0t7kvXQHUz3dtjf9h2BpBh0Mmi0XOcmviQjq4WpNceRtAFM41sKCBP9Wv08h201QOBCfSHOBTisFN9TxG75wyyp0CYk78wummvqMoV/mxWJFmXMQKUz4x3dAVaI/c3GdniuiKQb0aVduN2oVKURZUjEVPufXVduJm+sOf8E49vX5JbSVg7gTKA9VNTyR6QvyUJ8PUuCjIxhb/UXaP+8nbuDb5AAqN6x1h6SESnCmfoPa1rqgYKNfg81nkayRE2uLRct/eqXu1BmCzJFeQnqjPHFeAZVYlX0p/qz+jvJ00AMk2KEWnwEcDroTS/0p7UHDVKDL9HCwlkav3Zxa/dEyg8L3oOMd8gK8K2BHWvvPH11FWF9KatHaOQk5UL/ewl4qOyEgslxB3fQiB83Ly4kunDWZPbheBXW0W3Gq9dZ0StXVdF9yv94bpPyCDCA/1Q8IMbzhpbDM80hVYV0yslNCpYrAGKH+Muq7VOG9DEIFSB7z8UABqr+FQ==',
    }
    @users::virtualkey { 'jareda':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIBp3ve6cBbIH5qX2vVu1+6uB+HI+Vn0juIWzNr9GLc6X7t1f1g20N7LRHv8JzkJCvZVkAPRlfqQSMtSPRQtebKXpyrv+bNefvMkJbnAXBYyWQggpb01Y+jfoFxu6g4h7CCV3sY0lUHLozzB0gs+IWMZQh9gz3Qt6/vTinsVOSrEsw==',
    }
    @users::virtualkey { 'reubenc':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIEArJaAVgdXp1a7qx4UcWE6bfN9Ltk+Z4ETijS7hIE5JETZz0n9UuvhqNG/ZoZClm9yi3HFvqfr81JenSH0sBVBJhA5CV3cIPE9UnT8ppEpRG1D0yNxhCgof2rOjhGYEoPZsQH9Am1y551Tqt2LnB9ghFCA8UzH50ELACvJq3c/1K0=',
    }
    @users::virtualkey { 'dariol':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAr7jOlYiLSCZccaXPsc5zPPaczdzAfrj8G2eTcZzi8p6+4Jiqdh0GmAJtASPEfxFMgX06uigD7FgdJrOdOa2+84EIZeYo9OlroB+ZgA9E38SQtZi9LAmNZe+23E66R/MQRekOW9kaC6mRj9G814heDIp9AIGnY4yM67FImkV4HoY26BXwPm3TiVGUO9bPexZogSRPe42JJ32ZVDdqpeQ2upxtJo7XTWN6zio3o8uxxELFFAx5+fA3KI33AiIwR8bicuSl5lVrmGgd3RB1FG1DPxrU84C2gkCBKWceLDy7dIwPKyODPPJ1S163YfMSO1nKQr+yQKZ7YSbq/Mg5gTHlcw==',
    }
    @users::virtualkey { 'denysp':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAveYlh8o/7NyKOA9It+EJu/uyaHhaYqMzzyMl700EKv0djdYDAOySaoddcsEZ54OVJ2RGVBHMmVACsZOq8nNKJXGza6Mue0tezsPp3DvBHOpNKwin6hV7ANIgfaHBsA5gz7NM8SXdz+GLRVt9NyM2QiAxHNB83eGemC163hsBMDLYJj/WRgqEsImiye/iFAJBXjfOqgQUqyXINM8Wg9bjp749l1HRtgSQ9HaRqCeSH2I1AxvyUz/Ytm2CTXluAFNDlQyy7vBuBOmbVG+VFvWJS98GejN+g2WZ08pt9scD7wAtd4jscXrEzHCVqR1J6+DrW4C27cG+3xEEK52iuvfJaw==',
    }
    @users::virtualkey { 'rayd':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAnOOg4eh2p5J8f1havd0aB3hCcT9z+vHTNLOA3Sm79wKVa615G1pMlUarFlQ4B6Cd77k9pxm776ArhQLFpfq60ZMBF+2wYNh7SekmldmPIQqbue2F8TR/Z3exf1rFFXk379j0gHKnB4iXSeeThZuotfISrqT3BOwuz4Xlr75+xeU=',
    }
    @users::virtualkey { 'lizaa':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAsHxxAb/Lb9fIHzkMPzBXWAb/mgXKQklIlTz2K1Q6YtXoM1zQtskhrNcmQMRoJmptsivH5UqFvUURMAGrWUelYsHzpjp6epZwsQ5Va/9kKNFeS5ohtK1qZxSH6F88oRm1BoJuT3d5fTRopj4oKP74OThpYF2JuAGa5FGVRZplx4k=',
    }
    @users::virtualkey { 'alexanderk':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQB4oSAWagzQvOVkx6eAcukbvrqUL4KydDh1zQRIBfY+a2+W7OCNxwShPvgBbJ9d4i3VOAiy2rY10Zeg32fH9iWcJMROWS3L1du5PM3xL5eUFtVBkYE0Qei713wEITvQEc/FEpqZuT6ykQab8kwiV4wByzcCaCrtzzQUw+yEzmXfo/iZTMnUKu33T9dP1so/s7bBgZvA6sp9ED7YDQEoymOHcOtBM9p3PG80ZMz+Dpm/YKNapPl3x+ZEs4X1k6jfScmHHpj7odV/o3aGI0cRvYK8exhE/RF/iOB3KY9cw7W+DZvy4BBH6m0y/z+sG5u75Bz+V1hHdk4j7zMr62Ip7UFB',
    }
    @users::virtualkey { 'tomislavp':
    key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAsPIJLtxz+cboZyUZN8I5S0QPzWF8+WE8T3EIuGXD/azu03MquVer3OUfM8R+rA6Ggk76tJaxw/NPdxsvRtOUmikTUdpkLHHtU1hkPGRtXQ041IcX3Nu/yY3DXCqfO8TDlfMEnhUyjDToavdHZ2AP9EskG5ccj5P6Z7A8uJGgWoPBithrcYSTMLHChyAsGUN74t+VEmpH3Vv2JIAj+sPIND76OQO2heofukhn6LNtYyjiiY3QVx5KldZ9DD/4gZjoUOi0IrFWr8LPRL2LzxzXloap3bUvbzNIVLw5YlRHkiGvLeCazx7As7tZHEE4kusR4APhrYl/7qjohB0D1cpFXQ==',
    }
    @users::virtualkey { 'marekk':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAhUqyaUIFfxL42+I/I//YqPjsyXbT4ByRnZfZCS2bafnFi4ExUFWlE2IA+a7ujGYRJAmWpayvyNHxGR1fcdi1k4rpW1w7zz5X4wk2Mdq8j4cTOXDcT0yYYkGYVtsYGUHTAPXTQxjQn5nDQQ2h+03DlId5YGGcIayOzPurSx8AJomIN4Qbn536jm1HvnlmWn6Of3SkAWrBonFRpLKnHyg/wByYQN17hNXUOw23x31g7zc5yXGNbeyLhmBcwBMPjQz9VoA0v61xU0Cqe7/rNnn7+lLV2c6sze5SgIk1L82avtmP6/2If/J14JjEIshB+nb/LNMpwjeQR8VMAXaj6eq/tw==',
    }
    @users::virtualkey { 'liliam':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAiHURi+X5cS+foPPHwXNwE3y6sfB8SEb7U6TbBsOrF9m2tUBOHtNkNU6fSfkOoCNviebU8KLVp+sQmqLimEPU/ChbYZTE+WdukX9+rG673OuAdwadVPx8B0tM1IFGXJ1X4rBIBhWAG3M0i77MXvh6SfIs+/xFLo86KtqoLJIBSr6zYwDOAJrONCntZN2WbNsXsMwRO33ecTEn7qd4gVWxx3XB0RXoOo5p4e3ZFXxDxeg3sgfqwjjt1vsjWvoHn6w3dHbsfu9kBSXLf5LVDO9GtsReoUdlBHjZUkT5HmpbeDdyzY+rSO6O5M1Vpq4Jt67AUFrqRp4Pnqp4qedih8Ah0Q==',
    }
    @users::virtualkey { 'vassilv':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAqxv7ypu6UVa0vDzW+t4fkGtDuL/eXMkEVgwRH/uQq5ybUcq/GYij/1NlKEVNMuHCSyFR38FBo16L7HGdDqpjW47g0DSfgKsztxHgrEWjx3yCwYkj5sdqlYonfu1k3e5OyQboQ4/HcWBMnlIiudEo2N9MSx37cp318QGHY2r3FrO9/gt7aw8DvQAP0JLVO9kHTCvmf+yt6AcP8t4z1IdlAMyTCfPWJbMRQzAwAF2+At/KC0fSo7T/gVCr67J38lI1xt3PuJIYNcZetywDbrKfRpIkmyLIPGyCr7MRE7Fvnvahqm1OpFWsc210aKA3WNfPW//oaryPwoA6dTGmzekfUQ==',
    }
    @users::virtualkey { 'nikolayv':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAj4u4CdFB7Razo/2jHdGE5AYS1fsubCibqfdfRrSW9dY6G9VMLiRV1bUjDKGdb0qj5+ATj+E4S+4BF0WTGN9mP12FV8GxobATkYmtz9N31PXa+69Hpsk5/L15ckAJC0sRzwvykiK56M8IA/GORJy0mGyQzfUZ1vI0DyL4HuTuXH0Q72ayNOcd5MQyXse79iHb1wPFP1LNJV+a0SOTSdG+c7v5SYbs4Al7AX3Zt6opvdJp4DffzWd2oLsD9yy+37tjlaBqtjVtWrbWP107sfnLeCbVVe2zulkCo2QOUjWZi/gOiVe0rr4tS8JsQcmbvbtn2CwVCuycM+Im+mgTEuWMRQ==',
    }
    @users::virtualkey { 'nikolayn':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAqNcPUwPVO+R4GEbSq1ilMG7FnsNvbExZ8OEGdiW8SgFDFHbNx50ydQdr5+YkvsSebh6piGlWGBrHtySKDqmu0cVuUxbsOXqr4eF+w36A0P0uJRqRSWsD9Fv+kzpnnq+MhxiC/1Yu87gNYQvxlAaujWkQzPhsggbBMSV24gEOPAG1oqw+e2rhk8SFNC9yFHRHfaMtp+ywI00On2bgeW1z6SuBNzOEus1vUz3F+UicvK/Vd4gjrYdo5dTnVqJsfFP1P2m6OJhheXyr4IxcpDuisJtL3I/wou+2ogcXnajS8qLGzdgpnV3feKodwVsEkNIcXO2BqNZfzpoFdIyItpY1RQ==',
    }
    @users::virtualkey { 'blagovestb':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEA3nI0gJPOChxWPxxrjp3l2fia1wL9/tGU0/VSy8hrqMP6oqYUXgvdFM8aQa1QlbwK+8DPp2WRlSCejJWBq0rwqUIKUVfwW2kJjJGOlARNbydrd9sWeOd1FWqnjM4Xq03n2+pU6LnMBjsYft4LEgocvAANQIt71v/ISsLo0Mw5mXbZ3ONNXCB0w8UGIrtrrdrloKOdB4zQJzEE9gYDNMqCAj7z0Erh9TCeRANyfzZ4OWxTfnuVeRCTCKYl5Kj1trgUw91V7KFQql2OYFbiXIMeGjZCAfu0Hx8f7xkdOHngk1zDDjHuizHNhtUIfZwMem6fGOQbRnt6C218EK7OnqMF6w==',
    }
    @users::virtualkey { 'borislavb':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAlYxlr0SrNzHNhouWDZ6d4Q1mEJBYawywkBbOxTkqBEFrJPNU+IrbiHRBkD9pw/izBwXRYClZXukQdh2V5Eotuhs00BJKbW+Mc/ttm13M0EXlkQtKA/eJC/snAFVHvA2/1DEu+8TfS4IDLNhtZ4qo7L0Su0GpKD6lKDTCSDy+4oCobZz/1jsm6i+dXV3apNa/sSHdr41LSmNNjrjn/KDFGF09qde2p7YCmU4rY1XlGNy7BStioRpb3+KHjZGBv2LcTznvbz4scDPG1ri8vR2UzVWsZxlwGuQXWAW7fSvdOez2EeARvrJS2sVNpFM329RvfLR8WpvnhfnXV6x+mJ3Q2Q==',
    }
    @users::virtualkey { 'martint':
    key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAwR2aJOmlqVoPiIArMdQk50y71YN8Po1V+5iQBnggRthrkk1ah1cH6s9IKauu6F3RsPBOBCpBlAo0JgGWB7mXhGOXHvl9jH9BbudbonLKglNAJKRBRRm678GqXcnI6+FfNXh89APV5nOEDJYrPqbkZq3U4j1ILHJ6u5YzTSpckoBsKLQjkiw7tP61gtsCP3GW42QVaw1dtOoclZuxdASv/CmHcTbSAjV56vyzqxNQVWqTVKp1jfERK0VNsapXLEnzBpjjtIL8Mt+wOR2Jnl7Gfw/77zds/0SUkxHM+zze01ogwGM/CMFlnRC4IgFk4jcKsnDLIwhS1/eHShLBNlqFSw==',
    }
    @users::virtualkey { 'ivant':
    key  => 'AAAAB3NzaC1yc2EAAAABJQAAAQEA64JD6JiPt08ct7iIB+PkqbdbbJ+JStlCZsMczMHhDrQwk7fWrPqOkuaPuIUg+tQpefcVMifpkF36baAh4bxWOLMRSlh++/QNLTvbbDptQSRS7s5qtpQaBaTxSaP+JLOCVV3E8oSc+8utJpJRYt1AlmChMzgYG9OjFYzhTwi6H9hbJJFIUe7UsspcJLkEuWuqlLSvrqTo6NjGedrrBPhXo7lEEADAfwAsZXFKNGkrpINL/qWTjnYWhgOeaIWt8EhrZYvL3uLK40BvrFEye21FgIOyszspuZG6XzeiWnbBFDhCPnLP9IMH2J6edGEJR68FdDr6sc0cGwH+KsuEtvJVgw==',
    }
    @users::virtualkey { 'adamc':
    key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCjgsnscrf5NCrfb1J4b56hStdvVQRONswuoS/sv0q34nEas8fJ0NO6hpYvQB/66iFAQN8keYSxjAI2Pr/EXq8rYg+aUxmwdz71a1zeBeadi090gFX/9OxiWA9WPjagnuxyxXHFpIe3dBJ/blc2zv/wn4fKqlC0C3EZlTVQJORa/bo4O+eEFlnjCQTDW/mZOPScsv+a+9ZuC//cuNy0HzpCZhq/bsSuTH70A0RQLpEAnEaKhquRyir9BymEjEngbkmuwrXvzxsaVe6OvjSFHVcGxTDe03lCrOOiLZFpt5uKsPW+owop1wmzNCxnK0/+cTq6u5jFtYHG+qc0Pf/4e4Tv',
    }
    ### LAK DEV ###

    ### LAK QA ###
    @users::virtualkey { 'tihomirk':
    key  =>  'AAAAB3NzaC1yc2EAAAABJQAAAIEAx6kmiHwjDIp9NEsu6a8hMcjlQE8/MUBUFKxNDoYfOKQ2F4lAesAO8U+xmE0ztmUbZ4EEp0uoNkUNoClaQNfo6pRnVbLCdAAvu9wTl/p2UJ86f4VSpxEYT5fyj3ImLYW/MhhInesbQ4s9yMs6dZS/UTyDqHjaLITGcytkhlVA748='
    }

    ### LAK Developers ###
  
    @users::virtualkey { 'radkol':
    key  =>  'AAAAB3NzaC1yc2EAAAABJQAAAQEAvY722bdzZuLBiX0S7Lzs1luGzljndOQkikMdcDDcGUBILkj2QP43Nmw056sBmGbFCm2V/tape3cRGl4lpdeqF30Rv2TBw78JQ60Gg4kO01aYoM1vuMI/dgQDRdu/6AomGMQ4KyXXbdMv2xYLqO7rm0FmBBLOqpqF8g9Qy+zQ9gx9Ts1Twk2iMmVlYhJLE10yTvmxn9VVLm+eMEh8oV/BgSRUSP2ZCa/t6MGkrVJscE4HOCOZRKrgcPUvmBpoZwgUbbvtm7uoYtoBNcBwnN6cL8oqjvhGSuhmw1zDLbjCPHGMCzV2Pn4EWGSckfdncFUxdDEcGnofXiwce9tMconl/w=='
    }
    @users::virtualkey { 'mihailm':
    key  =>  'AAAAB3NzaC1yc2EAAAABJQAAAgEAgWVz4HnQeeLg/FhAd7M1PEs+PuHzfAi7S7w/tw3xG5Ouue6d6Ewu+VqcAxX36CsiGYBm6CjnEN4//rhSAHgoytbTmzFjqK+JsFCVqZwWRZwHVSk8U6ZdJ8V6w4+hxiVwiZ0dYkDP1NhLVHzsjrSWx5GfIzM4UG9sGQmV4H6TNBML+cPG6hRDv3bYkrxaktPPraxX5J/yNZfsZZJyckI6ecS4HfQn7Di8+L+qi+11aZc1iRfUp4O/1UdUIUlbQRPY51I2h5onq2uy8HxYgftu7q4oSXnOSYlKHkbtU2dwbeuZRMaryYh7xbpLwjd5qu8DnfTKue4D1zQtJvEdFB8EoGsOsFbL9ao6Io37mHG4QdEGU0GE4b1KoY2b+gVWUE23SM85OPG4iFsZ4drXfZpO7+rN5AgrhojwLLJtqyKt4tpU0UMii7WC/Ye9JoE8a2cxW+gcFCusmkJDBLafnJZlD++SlV4Uk5I5rSax5kmuN/rD8Y4a90Z2c1czRoRRETenlzhT1uFk/YWmK4jqIEBK0hFgBM62fXiFFWhZocTXlNynVjonZYELnS9Fq4CG9uHZY9VLjNn9iRE0LfoJJDTSEnMhrLyLNpn/YRctGZtPzNZD9sIoD0fG1WgdYhxJvXU+LksD6Uj0UVBegGUhb7hOxcSGtqw63lz/eTy3NN5zfgU='
    }
    @users::virtualkey { 'aleksandart':
    key  =>  'AAAAB3NzaC1yc2EAAAABJQAAAQEA78X70+IXTnIKjuB95EOzd8e0gY8IbcD/XaFhPKvoIaNTGh1vrM7+cM4FI4tuinh0Y89gAcJQcNK/y6hgsj8ogGTgt6QAOL421v/K2gS3FrOpko1QYXbOGkA8MLsynqHXFYC/mh64i1jlohTH7s0ltswXSEzT2vJJiojA+V+4ZlUcMR2PidFOWkMeoMcYKMc6Om08HsPDlt6aACqfEf2oivxQ3FMzq+Ac3W5MqBWQmLnkIgCPnhddfB8+d2IpHKOogOuMXCaxsFrwaZFwcOOYsqF5p2yllLiuCE+b+TWCax2MzIBq4X84MOefx/kVZ4G8q6B+wa3hcKmaUxkQa+MgCQ=='
    }
   
    ### DBK Jenkins ###
    @users::virtualkey { 'russellh':
    key  =>  'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1pImudj9IqmUQwc6MtrMxlxwL1jQcJa8glUp81q/dzVGPKA9TwbYZkOzsQDmTstYbZZNXeo0JXIiI6i+ed9aFo4Q4c7z6fEUCEqhXNFeIiFgQzehwzJoIO6Pr/o4o0w9GdSjA09/z1UQvwzbRvFu8wBCTTNKM0J0Z5P6i+QpdK4KAoyZeRx/muzneTKrkFqSIDHsIEQw/YtPwRqQ6Crngazxb1hqEaevFmpq8szrIM0HmrwrY3FVj9UYHU3qCDg3gtKISn/qxJatsxaUGzo347F69pXByw8qGmRjcbCf5XteCyGzbOHiazLSPTTHoZkG7QSpMgO/kD3A2hpDBnxId'
    }
}
