# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
  board = Board.new name: Faker::Hobbit.location
  board.save
end

cards = [
  {
    text: '100'
  },
  {
    text: 'BE EXCELLENT TO EACHOTHER'
  },
  {
    text: 'BREATHE'
  },
  {
    text: 'Look for the helpers'
  },
  {
    text: "Growth isn't linear"
  },
  {
    text: "This is just the beginning"
  },
  {
    text: "DON'T ISOLATE"
  },
  {
    text: "TAKE A NAP"
  },
  {
    text: "Make time for exercise!"
  },
  {
    text: "Be good to people for no reason"
  },
  {
    text: "It's ok to be in it for the money!  $$$"
  },
  {
    text: "you are enough"
  },
  {
    text: "We believe in you!"
  },
  {
    text: "You can do it!"
  },
  {
    image_url: "https://lovesvg.com/wp-content/uploads/2018/04/Free-SVG-file-Life-is-too-short-for-bad-coffee-6268-260x185.png"
  },
  {
    image_url: "https://thehungryjpeg.com/img/products/fc75e09a0aba9eea142c94c006a6fbf45fef2d3d.png"
  },
  {
    image_url: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOUAAADcCAMAAAC4YpZBAAAAw1BMVEX/////1ABtbnH/0gD/1QD/1wD/2QBiZ3Vpa3NlaXRqbHJkaHX//vj///3//vb//fP//O7/9tP/6p3/9Mr/8Lj/++lfZXb/7q7/+N//5H7/77X/8b3/2Tf/6Zf/66L/4W7/43b/54//3lv/1yb/4Gf/3E//5ob/88X/20T/3VH/4nP/31/EqkDIrTyNhGB+eWf0zBLivyermFHZuS2ViVtxcWzStDWynUydj1iHf2XpxCB0c2vjwCyvm1Dtxxi8pEajk1YqOtLCAAAKVklEQVR4nN2d6XraOhCGI49ttpCwhBAoISwJkKVN056kPW1P2/u/qsMSQDaWrGXGsnl/88TzZWxpNBqNTk6y5Xz4MOl9yPihWXMNwBgDv+naEEoeVxpXQNe1KXTcb0Ues8zbvcilzLlrc2ho8SKXdFwbREE7JpJNXVtEwCmLAz3XNuFze6CSQdu1UdjM4+/rmrprs3CpJ2k8une2l+hKBleuDcPkKlkkYwvXlmGyEIhkcESB+weRKxnzXduGx1QokkHLtXFYDMWuXHLm2jwcDqOeiDOPZDaZSV3JoOHaQAwacpGMjVxbiMEoRSSDI1iCddJcydiNaxvteUgVeQTOVHDlETjzRkFk4Z2p5MrCOzN1gH13ZqHnzNS5csvItaU29BRFFtqZ56quZDBzbas5KRFshMImus7UNRZ4nRnfMpDj2lpTdDQWdhOsr+XKomaABloiGVy4NtiEpp4rGRu4ttiEiabIQm4OKcbpPPeubdZHObjjnFm4XZNzfZEFjNmv9V/YpTPPXZutiYkrGVy7NlsPzYhgh2u79dCMCHbO7Ls2XAftiGBLoXZttSOCnTMLVIZoEBFsKVA2b2YsskCTSXLZi6LKwkwmXfMXlhVnMpGUESg4syBVIwfFk3oUZDJJqCvUcmYhtoYsppENhSinGNuqLEQC2lZjIXKWF9auLEKaS1hYqOHM3AezwhpRHR5cq0hDcfM5hZzX5tUxXMlg6FqHHLsQdkfOj5oYZkLi5Hv8Mc6ExMn1+KNUw6REjsefMyxX5jr+kZdua5G/8adx1Z5fDMezkY8mcrnMvO3Nhh/azc6pO2H1Rqf5odsaPd4PAngHUeI773/XH0xuZsP+/KqTTeqr05x3r2ePg60F+MLkipeR/O2s1W83KQan00576bfJlMpnJnoHk4dWv9lBkXs1v+7dTVkexB2ytmq66LXmTcOPtzEfju79fKqLs7LSv+915zoZo6uL2YIVQl6UlcmLWTfdr+fz2R0rnj6epdZBry/2ans8YIUWuAdg+tBPKLltj45F4RaAu2FUaHd6ZBI3AEz2S7j+sbmRAxbvRUQPx6txxaa++Pa4RW6ySMntEo4KaKicNis6MLbbUi0IU/vNGyl+EARKP8JcgB9C6ks//P3052uaggA+fnv6HFLaYVLHqvzH4dNlpVJ6/iyVGb7VauXK5X+EMm9tqwBk+M8Vb0n5p0xl8Oty9SPv8guZzFVBBtkrG/5di/S82h/Jtxk+Vze/uvyV/gUbciJt8mGF/7m0Md+r/hS7KXjZ/epfImducrsI+6pJhN/eXbl00w/hOxv+V97/isaZm9SudVFHMsHP6tb+ypPQ/vDf/a++kThzW/OPtB0Xxf99uTXfK/8V2h/Udr+qPlOo3Bf2GZezSgg+cvYLPzn+f+GVGEFssC8FqxOMs+GX8l7lq0hl8LXEqXzB/zB9LmFL8GmGn6p7+z0QeIn3uFf7iK4yehAHf/0VvnIqy6LwJ/hT4X6FPvzECzQRN+U2BNyr6JV+C1SG38qcSvEgZcbhMWSdk9oK7GOCtUrRhMl/vV71E65KGB3mKnEzI/6PiErRuBL+5VXiTiXweCjy5OQOU2bwK6JSFKOG33mVPzFHHxAcdMQM9SJThFf6KlL5D6/yFdEAYc0i5rQZvHFThFdTUul5iGHBVFhle4onMzIRylTys2pVNK3qM5DsfJ2hPSX4WOFVvimprKCpnEq3986xvBk8qamMREgVee5EHblIw5O+CRj5soSkMk0kmjeVVfKjzyWOynSRWEOQqsrv+CpVRCLJjI2x2amEheJBDQyZRioRvku4U9O4pL6wDvZUo4KIypq1yuTYVYR1TBtVKY7w+Gjdfr7UE8ndJGJITKUwWudXXtaxD2ifN76xkxmL1kWpVi4duxTpWT3SqBGb3bI6tvIS5wq4Cacq3VBJxeywsV5zsBjRVbQwdIsEgtVnm/Wl6SEU0zYZK6IZEeEHF5lwrHZKzBtaWWX2eJWvIidFPt/yP+YqbRo9NY2fykIuDBcndCIvdtliC9OqAVLHeDzgtnkkTvKB20GoyPY5pUwtm3kaL1H4qEaSTg645LQwdkgBZIkBNUyjPT5rLtka4JfRhmGsKFmnh1kYxI8rl6LpMpJcr3pGnyUgnQkbmcj02c5J4i2vyD+j/N1EJV7jEaNWYfs0gHzs3L+wouWZVCRi30eT+CB423pJui+5W5VUX02+StSDmm0DA7Y1LmXpJo//+X0uKT3pv7A+cjcOg4kz+FFayaym5B/Dp7XMmv6GFwzQD0KdDbTf2uDltVQrvaYVuIRPpSVffN3/I0ywNa6415cZvry9pBdVhuzrG+h7kqitt+DqMalOhcLRdemo9gdBd9oWfVveAsJms1Q1e9r4pE1Yr1zLW0MwuEZp5KDOnWZwjVDXH2qxRWZyZ4JR8I4oMqOO5U6HWtpxh8ckqsVinJVIhA5i5mTXFBCt9YsJmfVRMVpVI5Fdh32ien41lVl9mDp3yOCjvtlsB+FxIgUgI5UuP8vsenLduRSZ2T1KjgPZbC74cDpbrsik86rVHjUC2VxjQnGSSEtlJv0dHYtcHY2lB6V3qhVZ3PxFcsJPiyy6eON1aTRWmUG2gLazgBL0vcqVL2ElhL69Yy4Sz+Q9Di3uHkGDfiWN1O3XCvJLTNyuoLdQJ9edh+obiFXmY3OPOmC3vHwECerbzXIQE6ygjQvyEBOsoL32IhcxwQrSuGDsWt07tIk8l1l1HtJ8gc2ta7hQ3sfnPk+whXJZgnApEBKUtw6OXYvbQbksuXctbgflssS1Ng7NM4gaEPUhM4IuXZmbyIetm8ISYX+FHh50w09+Bh/K6Ccny64NVNFPngYfusVXvhpdU1VR5CPns4Uq94OT84EpzudNdRkxSsIZeifnts0QNn+IqIgLwTYYrN+zuY/wt2hiPITF5X6SQwgwaJaY1vEd3HCLwo59RxaSJaZlYRr4sZisbymSZpC122pPGCxO7XqV0Gy825wkgbvEf3zT5o4bkoI8i/wdMOHcNjT/qySRrHkUCzNJ5VzDvNcpRT2w6c7l7uYe4R/WP7+6gSJdYFbNBExhjDAMkIGguNJoIlEMw86MbmiimEoMJhKYKNeSmby2FEkR7XQITLWs6GrfKkZxaFh7utRNzJzqxrYUqxJNCx4MTip1NJdk+Acxte6hT509RLS1giH8cmCNoAB8i2W8zueJf35PeXUJ2h9klLp6Iz78FaZq6AM966ODnYnis/CDH7XDXTBBmambiktsjGdFUFEJA7TSjbnSMIT1tB3pKmGKmjtUGYYwn7cmTSUw7Eik3krVifzEtNEHfIotqNNxik70J8pmEtvJQ8zZWHZ7Nf5MIo59wKc8EXkm8SdB3lkQrQNrEZ8UFPqTIlpPXF/CNIsDdKfJ4xDF+jIhtQ4Don2nQ/pJ8yfFg2IbcgC9zBqXrGg/xl5cmgPS/FwCMOiSH9CJcz6cckKBqKNIc7MfBwCLVgaHA5O4ul7AWilgtRpN4KI3ue212pk1LEmiMR/ORr2W1tfyPywj2+3LMT02AAAAAElFTkSuQmCC"
  }
]

cards.each do |card_hash|
  card = Card.new
  card_hash.keys.each do |key|
    card[key] = card_hash[key]
  end
  card.board = Board.all.sample
  card.save
end
