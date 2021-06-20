# K8s-Fundamental-Project

## Set the Variables:

In db-deployment

* Enter a ``mysql database``, eg. database1

* Enter a ``root password``.

In app-deployment
* Fill in the ``database URI`` with the password and database.

## To deploy

Run
* ``kubectl apply -f db-deployment``  _(make sure the pod is running)_
* ``kubectl apply -f app-deployment``
* ``kubectl exec $(kubectl get pods | grep "app") -- python3 create.py``

Or run
* `` bash apply.sh`` to deploy.
* ``bash cleanup.sh`` to cleanup.
* ``bash both.sh`` to do both.

## Accessing the App

The application can be access through the load balancers external IP address.
* ``kubectl get services | grep "app-service"``
