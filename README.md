# IMAPEX Lunch Orders

[Checkout what everyone is having for lunch](./LunchOrders.md)

This is the cloud-native way of passing the lunch order sheet around the conference room, we'll use our git skills instead.


# Purpose
This repo is designed to be used as part of the IMAPEX 101 program and can be used to reinforce git/github skills using the fork & pull request workflow


A nice brief description on this workflow can be found at: 

https://gist.github.com/Chaser324/ce0505fbed06b947d962

You can also find the full git learning module for the imapex program at:

https://github.com/imapex-training/mod_adv_git

This lab can be used in addition to or in place of the 101-github-lab located here: 

https://github.com/imapex-training/mod_adv_git/blob/master/README.md#forking-and-more

https://github.com/imapex-training/101-github-lab


# Student Instructions

We will be using the github skills we've learned thus far to create our lunch orders

1. Fork this repo from the github site
2. Clone your fork 

```
git clone https://github.com/<YOUR_GH_ID>/lunch-orders
cd lunch-orders
```

3. Create an "includes" file for your order, a sample is provided
```
cd includes
cp sample.mdpp.template yourusername.mdpp 
```

4. Modify the new mdpp file with your lunch order details
## John Smith

* sandwich
* chips
* drink

**NOTES:**
no mayo

5. Commit your changes 

```
git add yourusername.mdpp
git commit -m "added order for yourusername"
```

6. Push your changes

```
git push origin master

```

7. Open your pull pull request



# Proctor Instructions

After all the student's PR's have been merged, the final markdown can be rendered by running the `make` command which will merge all the student orders and complete the `LunchOrders.md` file

The repo can be reset for the next class by running the `make clean`
