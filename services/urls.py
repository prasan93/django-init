from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .viewsets import UserViewSet

router = DefaultRouter()
router.register(r'users', UserViewSet, basename='user')

urlpatterns = [
    path('', include(router.urls)),
    path('users/delete_all/', UserViewSet.as_view({'delete': 'delete_all_users'}), name='delete_all_users'),
]